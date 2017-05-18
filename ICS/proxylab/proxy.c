/*
 * proxy.c
 *
 * Main program for proxy. Infinitely waiting for client's request, then
 * parse the request and send it to server. After reciving request from
 * server, send it back to client.
 *
 * Use cache to store recent used urls.
 */
#include <stdio.h>
#include "csapp.h"
#include "cache.h"

#define DEFAULT_PORT "80"
#define PREFIX_LEN 7

/* 
 * request_t: struct to store send request
 */
typedef struct request {
    /* send buffer */
    char buf[MAXLINE];

    char method[MAXLINE];
    char url[MAXLINE];
    char version[MAXLINE];
    char hostname[MAXLINE];
    char path[MAXLINE];

    char port[MAXLINE];
} request_t;

static const char *user_agent_hdr = 
    "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) "
    "Gecko/20120305 Firefox/10.0.3\r\n";

void *doit(void *fdp);
bool parse(char *src, request_t *request);
bool startwith(char *s, char *t);
void split_hostname(char *url, char *hostname, char *path, char *port);
void create_thread(int fd);


/*
 * main: entry of protocal. loop to deal with incoming clients
 */
int main(int argc, char **argv) {
    int listenfd;
    int *connfdp;
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

    Signal(SIGPIPE, SIG_IGN);

    /* check command line args */
    if (argc != 2) {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    init_cache();

    listenfd = Open_listenfd(argv[1]);

    while (true) {
        dbg_printf("waiting...\n");
        clientlen = sizeof(clientaddr);
        connfdp = (int *) Malloc(sizeof(int));
        *connfdp = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        dbg_printf("fd: %d\n", *connfdp);
        create_thread(*connfdp);
    }

    return 0;
}

/*
 * create_thread: create a new thread to call doit function
 */
void create_thread(int fd) {
    pthread_t tid;
    int *fdp = (int *) malloc(sizeof(int));
    if (!fdp) {
        error_response(fd, "malloc error");
    }
    *fdp = fd;
    if (pthread_create(&tid, NULL, doit, (void *)fdp) != 0) {
        error_response(fd, "thread create error");
        close(fd);
        return;
    }
}

/*
 * doit: read request from client and sent adjusted requst to server 
 */
void *doit(void *fdp) {
    int fd = *(int *)fdp;
    free(fdp);
    if (pthread_detach(pthread_self()) != 0) {
        error_response(fd, "detach error");
        close(fd);
        return NULL;
    }

    rio_t rio_client; 
    rio_t rio_server;

    /* store data read from rio */
    char buffer[MAXLINE];

    request_t request;
    strcpy(request.port, DEFAULT_PORT);

    int serverfd = 0;

    size_t n;

    /* temp array to store headers */
    char key[MAXLINE];
    char value[MAXLINE];
    char temp[MAXLINE];

    /* store cache object */
    char *data = (char *) Malloc(MAX_OBJECT_SIZE + 1);
    size_t data_size = 0;
    /* flag of if size < MAX_OBJECT_SIZE*/
    bool cache_flag = true;

    size_t len;

    dbg_printf("start doit, fd: %d\n", fd);

    /* read client request */
    rio_readinitb(&rio_client, fd);
    if (rio_readlineb(&rio_client, buffer, MAXLINE) < 0) {
        error_response(fd, "request error");
        close(fd);
        return NULL;
    }

    dbg_printf("%s\n", buffer);

    if (!parse(buffer, &request)) {
        error_response(fd, "parse error\n");
        close(fd);
        return NULL;
    }

    while (rio_readlineb(&rio_client, buffer, MAXLINE) > 0
            && strcmp(buffer, "\r\n") != 0) {
        dbg_printf("%s\n", buffer);
        if  (sscanf(buffer, "%s %s", key, value) == 2) {
            if (strcmp(key, "Host:") != 0 
                    && strcmp(key, "User-Agent:") != 0
                    && strcmp(key, "Connection:") != 0
                    && strcmp(key, "Proxy-Connection:") != 0) {
                sprintf(temp, "%s %s\r\n", key, value);
                strcat(request.buf, temp);
            }
        }
    }
    strcat(request.buf, "\r\n");

    dbg_printf("\n%s\n", request.buf);
    dbg_printf("host: %s\n", request.hostname);
    dbg_printf("path: %s\n", request.path);
    dbg_printf("port: %s\n", request.port);

    /* search in cache */
    if (get_cache(request.url, data, &n)) {
        /* hit */
        if ((size_t)rio_writen(fd, data, n) != n) {
            error_response(fd, "cache writen error\n");
        }
        close(fd);
        return NULL;
    }


    /* 
     * cache miss, connect server
     * create socket and send request
     */
    if ((serverfd = open_clientfd(request.hostname, request.port)) == -1) {
        error_response(fd, "cannot open serverfd");
        close(fd);
        return NULL;
    }

    n = strlen(request.buf);
    if ((size_t)rio_writen(serverfd, request.buf, n) != n) {
        error_response(fd, "write serverfd error");
        close(fd);
        close(serverfd);
        return NULL;
    }

    data_size = 0;
    cache_flag = true;
    strcpy(data, "");
    /* read response and send to client */
    rio_readinitb(&rio_server, serverfd);
    while ((len = rio_readlineb(&rio_server, buffer, MAXLINE)) > 0) {
        if ((size_t)rio_writen(fd, buffer, len) != len) {
            error_response(fd, "write response error\n");
            close(fd);
            close(serverfd);
            return NULL;
        }

        if (data_size + len > MAX_OBJECT_SIZE) {
            cache_flag = false;
        }
        else {
            memcpy(data + data_size, buffer, len);
            data_size += len;
        }
    }

    /* add object to cache */
    if (cache_flag) {
        insert_cache(data, request.url, data_size);
    }

    free(data);

    close(fd);
    close(serverfd);
    return NULL;
}

/*
 * parse: parse the client request
 */
bool parse(char *src, request_t *request) {
    char *dst = request->buf;
    char *method = request->method;
    char *url = request->url;
    char *version = request->version;
    char *hostname = request->hostname;
    char *path = request->path;

    char temp[MAXLINE];

    dst[0] = '\0';

    /* parse first line */
    if (sscanf(src, "%s %s %s", method, url, version) != 3) {
        printf("first line error\n");
        return false;
    }

    if (strcmp(method, "GET") != 0) {
        printf("method not implemented yet\n");
        return false;
    }

    if (strcmp(version, "HTTP/1.0") != 0 
            && strcmp(version, "HTTP/1.1") != 0) {
        printf("version not implemented yet\n");
        return false;
    }

    if (!startwith(url, "http://")) {
        printf("url error\n");
        return false;
    } 

    split_hostname(url, hostname, path, request->port);


    sprintf(temp, "%s %s HTTP/1.0\r\n", method, path);
    strcat(dst, temp);

    /* parse headers */
    sprintf(temp, "Host: %s\r\n", hostname);
    strcat(dst, temp);
    strcat(dst, user_agent_hdr);
    strcat(dst, "Connection: close\r\n");
    strcat(dst, "Proxy-Connection: close\r\n");

    return true;
}

/*
 * startwith: check if string s is start with string t
 */
bool startwith(char *s, char *t) {
    size_t len_s = strlen(s);
    size_t len_t = strlen(t);
    size_t i;
    if (len_s < len_t) return false;

    for (i=0; i<len_t; i++) {
        if (s[i] != t[i]) return false;
    }

    return true;
}

/*
 * split_hostname: get the hostname and surfix of url
 *                 path is set to url's surfix
 */
void split_hostname(char *url, char *hostname, char *path, char *port) {
    strcpy(path, url + PREFIX_LEN); // remove the 'http://'

    size_t len = strlen(path);
    size_t i;
    for (i=0; i<len&&path[i]!='/'; i++) 
        ;

    strncpy(hostname, path, i);
    hostname[i] = '\0';

    if (i >= len) {
        strcpy(path, "/");
    }
    else {
        strcpy(path, url + PREFIX_LEN + i);  // remove the prefix
    }

    /* get port if exists */
    len = strlen(hostname);
    for (i=0; i<len&&hostname[i]!=':'; i++)
        ;
    if (i < len) {
        strcpy(port, hostname + i + 1);
        hostname[i] = '\0';
    }
}

