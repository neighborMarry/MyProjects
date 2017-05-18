
bomb:     file format elf64-x86-64


Disassembly of section .init:

0000000000400af0 <_init>:
  400af0:	48 83 ec 08          	sub    $0x8,%rsp
  400af4:	48 8b 05 fd 34 20 00 	mov    0x2034fd(%rip),%rax        # 603ff8 <_DYNAMIC+0x1e0>
  400afb:	48 85 c0             	test   %rax,%rax
  400afe:	74 05                	je     400b05 <_init+0x15>
  400b00:	e8 0b 01 00 00       	callq  400c10 <__gmon_start__@plt>
  400b05:	48 83 c4 08          	add    $0x8,%rsp
  400b09:	c3                   	retq   

Disassembly of section .plt:

0000000000400b10 <getenv@plt-0x10>:
  400b10:	ff 35 f2 34 20 00    	pushq  0x2034f2(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b16:	ff 25 f4 34 20 00    	jmpq   *0x2034f4(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400b20 <getenv@plt>:
  400b20:	ff 25 f2 34 20 00    	jmpq   *0x2034f2(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400b26:	68 00 00 00 00       	pushq  $0x0
  400b2b:	e9 e0 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400b30 <strcasecmp@plt>:
  400b30:	ff 25 ea 34 20 00    	jmpq   *0x2034ea(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400b36:	68 01 00 00 00       	pushq  $0x1
  400b3b:	e9 d0 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400b40 <__errno_location@plt>:
  400b40:	ff 25 e2 34 20 00    	jmpq   *0x2034e2(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400b46:	68 02 00 00 00       	pushq  $0x2
  400b4b:	e9 c0 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400b50 <strcpy@plt>:
  400b50:	ff 25 da 34 20 00    	jmpq   *0x2034da(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400b56:	68 03 00 00 00       	pushq  $0x3
  400b5b:	e9 b0 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400b60 <puts@plt>:
  400b60:	ff 25 d2 34 20 00    	jmpq   *0x2034d2(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400b66:	68 04 00 00 00       	pushq  $0x4
  400b6b:	e9 a0 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400b70 <write@plt>:
  400b70:	ff 25 ca 34 20 00    	jmpq   *0x2034ca(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400b76:	68 05 00 00 00       	pushq  $0x5
  400b7b:	e9 90 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400b80 <printf@plt>:
  400b80:	ff 25 c2 34 20 00    	jmpq   *0x2034c2(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400b86:	68 06 00 00 00       	pushq  $0x6
  400b8b:	e9 80 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400b90 <alarm@plt>:
  400b90:	ff 25 ba 34 20 00    	jmpq   *0x2034ba(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400b96:	68 07 00 00 00       	pushq  $0x7
  400b9b:	e9 70 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400ba0 <close@plt>:
  400ba0:	ff 25 b2 34 20 00    	jmpq   *0x2034b2(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400ba6:	68 08 00 00 00       	pushq  $0x8
  400bab:	e9 60 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400bb0 <read@plt>:
  400bb0:	ff 25 aa 34 20 00    	jmpq   *0x2034aa(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400bb6:	68 09 00 00 00       	pushq  $0x9
  400bbb:	e9 50 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400bc0 <__libc_start_main@plt>:
  400bc0:	ff 25 a2 34 20 00    	jmpq   *0x2034a2(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400bc6:	68 0a 00 00 00       	pushq  $0xa
  400bcb:	e9 40 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400bd0 <fgets@plt>:
  400bd0:	ff 25 9a 34 20 00    	jmpq   *0x20349a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400bd6:	68 0b 00 00 00       	pushq  $0xb
  400bdb:	e9 30 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400be0 <signal@plt>:
  400be0:	ff 25 92 34 20 00    	jmpq   *0x203492(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400be6:	68 0c 00 00 00       	pushq  $0xc
  400beb:	e9 20 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400bf0 <gethostbyname@plt>:
  400bf0:	ff 25 8a 34 20 00    	jmpq   *0x20348a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400bf6:	68 0d 00 00 00       	pushq  $0xd
  400bfb:	e9 10 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c00 <fprintf@plt>:
  400c00:	ff 25 82 34 20 00    	jmpq   *0x203482(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c06:	68 0e 00 00 00       	pushq  $0xe
  400c0b:	e9 00 ff ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c10 <__gmon_start__@plt>:
  400c10:	ff 25 7a 34 20 00    	jmpq   *0x20347a(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c16:	68 0f 00 00 00       	pushq  $0xf
  400c1b:	e9 f0 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c20 <strtol@plt>:
  400c20:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400c26:	68 10 00 00 00       	pushq  $0x10
  400c2b:	e9 e0 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c30 <memcpy@plt>:
  400c30:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400c36:	68 11 00 00 00       	pushq  $0x11
  400c3b:	e9 d0 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c40 <fflush@plt>:
  400c40:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400c46:	68 12 00 00 00       	pushq  $0x12
  400c4b:	e9 c0 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c50 <__isoc99_sscanf@plt>:
  400c50:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400c56:	68 13 00 00 00       	pushq  $0x13
  400c5b:	e9 b0 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c60 <bcopy@plt>:
  400c60:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400c66:	68 14 00 00 00       	pushq  $0x14
  400c6b:	e9 a0 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c70 <fopen@plt>:
  400c70:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400c76:	68 15 00 00 00       	pushq  $0x15
  400c7b:	e9 90 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c80 <gethostname@plt>:
  400c80:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400c86:	68 16 00 00 00       	pushq  $0x16
  400c8b:	e9 80 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400c90 <sprintf@plt>:
  400c90:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400c96:	68 17 00 00 00       	pushq  $0x17
  400c9b:	e9 70 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400ca0 <exit@plt>:
  400ca0:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400ca6:	68 18 00 00 00       	pushq  $0x18
  400cab:	e9 60 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400cb0 <connect@plt>:
  400cb0:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400cb6:	68 19 00 00 00       	pushq  $0x19
  400cbb:	e9 50 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400cc0 <sleep@plt>:
  400cc0:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400cc6:	68 1a 00 00 00       	pushq  $0x1a
  400ccb:	e9 40 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400cd0 <__ctype_b_loc@plt>:
  400cd0:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400cd6:	68 1b 00 00 00       	pushq  $0x1b
  400cdb:	e9 30 fe ff ff       	jmpq   400b10 <_init+0x20>

0000000000400ce0 <socket@plt>:
  400ce0:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400ce6:	68 1c 00 00 00       	pushq  $0x1c
  400ceb:	e9 20 fe ff ff       	jmpq   400b10 <_init+0x20>

Disassembly of section .text:

0000000000400cf0 <_start>:
  400cf0:	31 ed                	xor    %ebp,%ebp
  400cf2:	49 89 d1             	mov    %rdx,%r9
  400cf5:	5e                   	pop    %rsi
  400cf6:	48 89 e2             	mov    %rsp,%rdx
  400cf9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400cfd:	50                   	push   %rax
  400cfe:	54                   	push   %rsp
  400cff:	49 c7 c0 30 24 40 00 	mov    $0x402430,%r8
  400d06:	48 c7 c1 c0 23 40 00 	mov    $0x4023c0,%rcx
  400d0d:	48 c7 c7 e0 0d 40 00 	mov    $0x400de0,%rdi
  400d14:	e8 a7 fe ff ff       	callq  400bc0 <__libc_start_main@plt>
  400d19:	f4                   	hlt    
  400d1a:	66 90                	xchg   %ax,%ax
  400d1c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400d20 <deregister_tm_clones>:
  400d20:	b8 07 56 60 00       	mov    $0x605607,%eax
  400d25:	55                   	push   %rbp
  400d26:	48 2d 00 56 60 00    	sub    $0x605600,%rax
  400d2c:	48 83 f8 0e          	cmp    $0xe,%rax
  400d30:	48 89 e5             	mov    %rsp,%rbp
  400d33:	77 02                	ja     400d37 <deregister_tm_clones+0x17>
  400d35:	5d                   	pop    %rbp
  400d36:	c3                   	retq   
  400d37:	b8 00 00 00 00       	mov    $0x0,%eax
  400d3c:	48 85 c0             	test   %rax,%rax
  400d3f:	74 f4                	je     400d35 <deregister_tm_clones+0x15>
  400d41:	5d                   	pop    %rbp
  400d42:	bf 00 56 60 00       	mov    $0x605600,%edi
  400d47:	ff e0                	jmpq   *%rax
  400d49:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d50 <register_tm_clones>:
  400d50:	b8 00 56 60 00       	mov    $0x605600,%eax
  400d55:	55                   	push   %rbp
  400d56:	48 2d 00 56 60 00    	sub    $0x605600,%rax
  400d5c:	48 c1 f8 03          	sar    $0x3,%rax
  400d60:	48 89 e5             	mov    %rsp,%rbp
  400d63:	48 89 c2             	mov    %rax,%rdx
  400d66:	48 c1 ea 3f          	shr    $0x3f,%rdx
  400d6a:	48 01 d0             	add    %rdx,%rax
  400d6d:	48 d1 f8             	sar    %rax
  400d70:	75 02                	jne    400d74 <register_tm_clones+0x24>
  400d72:	5d                   	pop    %rbp
  400d73:	c3                   	retq   
  400d74:	ba 00 00 00 00       	mov    $0x0,%edx
  400d79:	48 85 d2             	test   %rdx,%rdx
  400d7c:	74 f4                	je     400d72 <register_tm_clones+0x22>
  400d7e:	5d                   	pop    %rbp
  400d7f:	48 89 c6             	mov    %rax,%rsi
  400d82:	bf 00 56 60 00       	mov    $0x605600,%edi
  400d87:	ff e2                	jmpq   *%rdx
  400d89:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400d90 <__do_global_dtors_aux>:
  400d90:	80 3d 81 48 20 00 00 	cmpb   $0x0,0x204881(%rip)        # 605618 <completed.6342>
  400d97:	75 11                	jne    400daa <__do_global_dtors_aux+0x1a>
  400d99:	55                   	push   %rbp
  400d9a:	48 89 e5             	mov    %rsp,%rbp
  400d9d:	e8 7e ff ff ff       	callq  400d20 <deregister_tm_clones>
  400da2:	5d                   	pop    %rbp
  400da3:	c6 05 6e 48 20 00 01 	movb   $0x1,0x20486e(%rip)        # 605618 <completed.6342>
  400daa:	f3 c3                	repz retq 
  400dac:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400db0 <frame_dummy>:
  400db0:	48 83 3d 58 30 20 00 	cmpq   $0x0,0x203058(%rip)        # 603e10 <__JCR_END__>
  400db7:	00 
  400db8:	74 1e                	je     400dd8 <frame_dummy+0x28>
  400dba:	b8 00 00 00 00       	mov    $0x0,%eax
  400dbf:	48 85 c0             	test   %rax,%rax
  400dc2:	74 14                	je     400dd8 <frame_dummy+0x28>
  400dc4:	55                   	push   %rbp
  400dc5:	bf 10 3e 60 00       	mov    $0x603e10,%edi
  400dca:	48 89 e5             	mov    %rsp,%rbp
  400dcd:	ff d0                	callq  *%rax
  400dcf:	5d                   	pop    %rbp
  400dd0:	e9 7b ff ff ff       	jmpq   400d50 <register_tm_clones>
  400dd5:	0f 1f 00             	nopl   (%rax)
  400dd8:	e9 73 ff ff ff       	jmpq   400d50 <register_tm_clones>
  400ddd:	0f 1f 00             	nopl   (%rax)

0000000000400de0 <main>:
  400de0:	53                   	push   %rbx
  400de1:	83 ff 01             	cmp    $0x1,%edi
  400de4:	75 10                	jne    400df6 <main+0x16>
  400de6:	48 8b 05 1b 48 20 00 	mov    0x20481b(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  400ded:	48 89 05 2c 48 20 00 	mov    %rax,0x20482c(%rip)        # 605620 <infile>
  400df4:	eb 59                	jmp    400e4f <main+0x6f>
  400df6:	48 89 f3             	mov    %rsi,%rbx
  400df9:	83 ff 02             	cmp    $0x2,%edi
  400dfc:	75 35                	jne    400e33 <main+0x53>
  400dfe:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e02:	be 50 24 40 00       	mov    $0x402450,%esi
  400e07:	e8 64 fe ff ff       	callq  400c70 <fopen@plt>
  400e0c:	48 89 05 0d 48 20 00 	mov    %rax,0x20480d(%rip)        # 605620 <infile>
  400e13:	48 85 c0             	test   %rax,%rax
  400e16:	75 37                	jne    400e4f <main+0x6f>
  400e18:	48 8b 53 08          	mov    0x8(%rbx),%rdx
  400e1c:	48 8b 33             	mov    (%rbx),%rsi
  400e1f:	bf 52 24 40 00       	mov    $0x402452,%edi
  400e24:	e8 57 fd ff ff       	callq  400b80 <printf@plt>
  400e29:	bf 08 00 00 00       	mov    $0x8,%edi
  400e2e:	e8 6d fe ff ff       	callq  400ca0 <exit@plt>
  400e33:	48 8b 36             	mov    (%rsi),%rsi
  400e36:	bf 6f 24 40 00       	mov    $0x40246f,%edi
  400e3b:	b8 00 00 00 00       	mov    $0x0,%eax
  400e40:	e8 3b fd ff ff       	callq  400b80 <printf@plt>
  400e45:	bf 08 00 00 00       	mov    $0x8,%edi
  400e4a:	e8 51 fe ff ff       	callq  400ca0 <exit@plt>
  400e4f:	e8 0f 05 00 00       	callq  401363 <initialize_bomb>
  400e54:	bf d8 24 40 00       	mov    $0x4024d8,%edi
  400e59:	e8 02 fd ff ff       	callq  400b60 <puts@plt>
  400e5e:	bf 18 25 40 00       	mov    $0x402518,%edi
  400e63:	e8 f8 fc ff ff       	callq  400b60 <puts@plt>
  400e68:	e8 8a 07 00 00       	callq  4015f7 <read_line>
  400e6d:	48 89 c7             	mov    %rax,%rdi
  400e70:	e8 9b 00 00 00       	callq  400f10 <phase_1>
  400e75:	e8 a3 08 00 00       	callq  40171d <phase_defused>
  400e7a:	bf 48 25 40 00       	mov    $0x402548,%edi
  400e7f:	e8 dc fc ff ff       	callq  400b60 <puts@plt>
  400e84:	e8 6e 07 00 00       	callq  4015f7 <read_line>
  400e89:	48 89 c7             	mov    %rax,%rdi
  400e8c:	e8 9b 00 00 00       	callq  400f2c <phase_2>
  400e91:	e8 87 08 00 00       	callq  40171d <phase_defused>
  400e96:	bf 89 24 40 00       	mov    $0x402489,%edi
  400e9b:	e8 c0 fc ff ff       	callq  400b60 <puts@plt>
  400ea0:	e8 52 07 00 00       	callq  4015f7 <read_line>
  400ea5:	48 89 c7             	mov    %rax,%rdi
  400ea8:	e8 c3 00 00 00       	callq  400f70 <phase_3>
  400ead:	e8 6b 08 00 00       	callq  40171d <phase_defused>
  400eb2:	bf a7 24 40 00       	mov    $0x4024a7,%edi
  400eb7:	e8 a4 fc ff ff       	callq  400b60 <puts@plt>
  400ebc:	e8 36 07 00 00       	callq  4015f7 <read_line>
  400ec1:	48 89 c7             	mov    %rax,%rdi
  400ec4:	e8 94 01 00 00       	callq  40105d <phase_4>
  400ec9:	e8 4f 08 00 00       	callq  40171d <phase_defused>
  400ece:	bf 78 25 40 00       	mov    $0x402578,%edi
  400ed3:	e8 88 fc ff ff       	callq  400b60 <puts@plt>
  400ed8:	e8 1a 07 00 00       	callq  4015f7 <read_line>
  400edd:	48 89 c7             	mov    %rax,%rdi
  400ee0:	e8 cb 01 00 00       	callq  4010b0 <phase_5>
  400ee5:	e8 33 08 00 00       	callq  40171d <phase_defused>
  400eea:	bf b6 24 40 00       	mov    $0x4024b6,%edi
  400eef:	e8 6c fc ff ff       	callq  400b60 <puts@plt>
  400ef4:	e8 fe 06 00 00       	callq  4015f7 <read_line>
  400ef9:	48 89 c7             	mov    %rax,%rdi
  400efc:	e8 17 02 00 00       	callq  401118 <phase_6>
  400f01:	e8 17 08 00 00       	callq  40171d <phase_defused>
  400f06:	b8 00 00 00 00       	mov    $0x0,%eax
  400f0b:	5b                   	pop    %rbx
  400f0c:	c3                   	retq   
  400f0d:	0f 1f 00             	nopl   (%rax)

0000000000400f10 <phase_1>:
  400f10:	48 83 ec 08          	sub    $0x8,%rsp
  400f14:	be a0 25 40 00       	mov    $0x4025a0,%esi
  400f19:	e8 f8 03 00 00       	callq  401316 <strings_not_equal>
  400f1e:	85 c0                	test   %eax,%eax
  400f20:	74 05                	je     400f27 <phase_1+0x17>
  400f22:	e8 58 06 00 00       	callq  40157f <explode_bomb>
  400f27:	48 83 c4 08          	add    $0x8,%rsp
  400f2b:	c3                   	retq   

0000000000400f2c <phase_2>:
  400f2c:	53                   	push   %rbx
  400f2d:	48 83 ec 20          	sub    $0x20,%rsp
  400f31:	48 89 e6             	mov    %rsp,%rsi
  400f34:	e8 7c 06 00 00       	callq  4015b5 <read_six_numbers>
  400f39:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  400f3d:	74 05                	je     400f44 <phase_2+0x18>
  400f3f:	e8 3b 06 00 00       	callq  40157f <explode_bomb>
  400f44:	bb 01 00 00 00       	mov    $0x1,%ebx
  400f49:	eb 1a                	jmp    400f65 <phase_2+0x39>
  400f4b:	48 63 d3             	movslq %ebx,%rdx
  400f4e:	8d 43 ff             	lea    -0x1(%rbx),%eax
  400f51:	48 98                	cltq   
  400f53:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  400f56:	01 c0                	add    %eax,%eax
  400f58:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
  400f5b:	74 05                	je     400f62 <phase_2+0x36>
  400f5d:	e8 1d 06 00 00       	callq  40157f <explode_bomb>
  400f62:	83 c3 01             	add    $0x1,%ebx
  400f65:	83 fb 05             	cmp    $0x5,%ebx
  400f68:	7e e1                	jle    400f4b <phase_2+0x1f>
  400f6a:	48 83 c4 20          	add    $0x20,%rsp
  400f6e:	5b                   	pop    %rbx
  400f6f:	c3                   	retq   

0000000000400f70 <phase_3>:
  400f70:	48 83 ec 18          	sub    $0x18,%rsp
  400f74:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  400f79:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  400f7e:	be f6 28 40 00       	mov    $0x4028f6,%esi
  400f83:	b8 00 00 00 00       	mov    $0x0,%eax
  400f88:	e8 c3 fc ff ff       	callq  400c50 <__isoc99_sscanf@plt>
  400f8d:	83 f8 01             	cmp    $0x1,%eax
  400f90:	7f 05                	jg     400f97 <phase_3+0x27>
  400f92:	e8 e8 05 00 00       	callq  40157f <explode_bomb>
  400f97:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
  400f9c:	77 64                	ja     401002 <phase_3+0x92>
  400f9e:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  400fa2:	ff 24 c5 00 26 40 00 	jmpq   *0x402600(,%rax,8)
  400fa9:	b8 00 00 00 00       	mov    $0x0,%eax
  400fae:	eb 05                	jmp    400fb5 <phase_3+0x45>
  400fb0:	b8 ab 03 00 00       	mov    $0x3ab,%eax
  400fb5:	83 c0 80             	add    $0xffffffffffffff80,%eax
  400fb8:	eb 05                	jmp    400fbf <phase_3+0x4f>
  400fba:	b8 00 00 00 00       	mov    $0x0,%eax
  400fbf:	05 6e 02 00 00       	add    $0x26e,%eax
  400fc4:	eb 05                	jmp    400fcb <phase_3+0x5b>
  400fc6:	b8 00 00 00 00       	mov    $0x0,%eax
  400fcb:	2d e2 03 00 00       	sub    $0x3e2,%eax
  400fd0:	eb 05                	jmp    400fd7 <phase_3+0x67>
  400fd2:	b8 00 00 00 00       	mov    $0x0,%eax
  400fd7:	05 e2 03 00 00       	add    $0x3e2,%eax
  400fdc:	eb 05                	jmp    400fe3 <phase_3+0x73>
  400fde:	b8 00 00 00 00       	mov    $0x0,%eax
  400fe3:	2d e2 03 00 00       	sub    $0x3e2,%eax
  400fe8:	eb 05                	jmp    400fef <phase_3+0x7f>
  400fea:	b8 00 00 00 00       	mov    $0x0,%eax
  400fef:	05 e2 03 00 00       	add    $0x3e2,%eax
  400ff4:	eb 05                	jmp    400ffb <phase_3+0x8b>
  400ff6:	b8 00 00 00 00       	mov    $0x0,%eax
  400ffb:	2d e2 03 00 00       	sub    $0x3e2,%eax
  401000:	eb 0a                	jmp    40100c <phase_3+0x9c>
  401002:	e8 78 05 00 00       	callq  40157f <explode_bomb>
  401007:	b8 00 00 00 00       	mov    $0x0,%eax
  40100c:	83 7c 24 0c 05       	cmpl   $0x5,0xc(%rsp)
  401011:	7f 06                	jg     401019 <phase_3+0xa9>
  401013:	3b 44 24 08          	cmp    0x8(%rsp),%eax
  401017:	74 05                	je     40101e <phase_3+0xae>
  401019:	e8 61 05 00 00       	callq  40157f <explode_bomb>
  40101e:	48 83 c4 18          	add    $0x18,%rsp
  401022:	c3                   	retq   

0000000000401023 <func4>:
  401023:	41 54                	push   %r12
  401025:	55                   	push   %rbp
  401026:	53                   	push   %rbx
  401027:	89 fb                	mov    %edi,%ebx
  401029:	85 ff                	test   %edi,%edi
  40102b:	7e 22                	jle    40104f <func4+0x2c>
  40102d:	89 f5                	mov    %esi,%ebp
  40102f:	83 ff 01             	cmp    $0x1,%edi
  401032:	74 22                	je     401056 <func4+0x33>
  401034:	8d 7f ff             	lea    -0x1(%rdi),%edi
  401037:	e8 e7 ff ff ff       	callq  401023 <func4>
  40103c:	44 8d 24 28          	lea    (%rax,%rbp,1),%r12d
  401040:	8d 7b fe             	lea    -0x2(%rbx),%edi
  401043:	89 ee                	mov    %ebp,%esi
  401045:	e8 d9 ff ff ff       	callq  401023 <func4>
  40104a:	44 01 e0             	add    %r12d,%eax
  40104d:	eb 09                	jmp    401058 <func4+0x35>
  40104f:	b8 00 00 00 00       	mov    $0x0,%eax
  401054:	eb 02                	jmp    401058 <func4+0x35>
  401056:	89 f0                	mov    %esi,%eax
  401058:	5b                   	pop    %rbx
  401059:	5d                   	pop    %rbp
  40105a:	41 5c                	pop    %r12
  40105c:	c3                   	retq   

000000000040105d <phase_4>:
  40105d:	48 83 ec 18          	sub    $0x18,%rsp
  401061:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  401066:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  40106b:	be f6 28 40 00       	mov    $0x4028f6,%esi
  401070:	b8 00 00 00 00       	mov    $0x0,%eax
  401075:	e8 d6 fb ff ff       	callq  400c50 <__isoc99_sscanf@plt>
  40107a:	83 f8 02             	cmp    $0x2,%eax
  40107d:	75 0e                	jne    40108d <phase_4+0x30>
  40107f:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401083:	83 f8 01             	cmp    $0x1,%eax
  401086:	7e 05                	jle    40108d <phase_4+0x30>
  401088:	83 f8 04             	cmp    $0x4,%eax
  40108b:	7e 05                	jle    401092 <phase_4+0x35>
  40108d:	e8 ed 04 00 00       	callq  40157f <explode_bomb>
  401092:	8b 74 24 0c          	mov    0xc(%rsp),%esi
  401096:	bf 08 00 00 00       	mov    $0x8,%edi
  40109b:	e8 83 ff ff ff       	callq  401023 <func4>
  4010a0:	3b 44 24 08          	cmp    0x8(%rsp),%eax
  4010a4:	74 05                	je     4010ab <phase_4+0x4e>
  4010a6:	e8 d4 04 00 00       	callq  40157f <explode_bomb>
  4010ab:	48 83 c4 18          	add    $0x18,%rsp
  4010af:	c3                   	retq   

00000000004010b0 <phase_5>:
  4010b0:	48 83 ec 18          	sub    $0x18,%rsp
  4010b4:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  4010b9:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  4010be:	be f6 28 40 00       	mov    $0x4028f6,%esi
  4010c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4010c8:	e8 83 fb ff ff       	callq  400c50 <__isoc99_sscanf@plt>
  4010cd:	83 f8 01             	cmp    $0x1,%eax
  4010d0:	7f 05                	jg     4010d7 <phase_5+0x27>
  4010d2:	e8 a8 04 00 00       	callq  40157f <explode_bomb>
  4010d7:	83 64 24 0c 0f       	andl   $0xf,0xc(%rsp)
  4010dc:	b9 00 00 00 00       	mov    $0x0,%ecx
  4010e1:	ba 00 00 00 00       	mov    $0x0,%edx
  4010e6:	eb 12                	jmp    4010fa <phase_5+0x4a>
  4010e8:	83 c2 01             	add    $0x1,%edx
  4010eb:	48 98                	cltq   
  4010ed:	8b 04 85 40 26 40 00 	mov    0x402640(,%rax,4),%eax
  4010f4:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4010f8:	01 c1                	add    %eax,%ecx
  4010fa:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4010fe:	83 f8 0f             	cmp    $0xf,%eax
  401101:	75 e5                	jne    4010e8 <phase_5+0x38>
  401103:	83 fa 0f             	cmp    $0xf,%edx
  401106:	75 06                	jne    40110e <phase_5+0x5e>
  401108:	3b 4c 24 08          	cmp    0x8(%rsp),%ecx
  40110c:	74 05                	je     401113 <phase_5+0x63>
  40110e:	e8 6c 04 00 00       	callq  40157f <explode_bomb>
  401113:	48 83 c4 18          	add    $0x18,%rsp
  401117:	c3                   	retq   

0000000000401118 <phase_6>:
  401118:	41 54                	push   %r12
  40111a:	55                   	push   %rbp
  40111b:	53                   	push   %rbx
  40111c:	48 83 ec 50          	sub    $0x50,%rsp
  401120:	48 8d 74 24 30       	lea    0x30(%rsp),%rsi
  401125:	e8 8b 04 00 00       	callq  4015b5 <read_six_numbers>
  40112a:	bd 00 00 00 00       	mov    $0x0,%ebp
  40112f:	eb 3d                	jmp    40116e <phase_6+0x56>
  401131:	48 63 c5             	movslq %ebp,%rax
  401134:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax
  401138:	83 e8 01             	sub    $0x1,%eax
  40113b:	83 f8 05             	cmp    $0x5,%eax
  40113e:	76 05                	jbe    401145 <phase_6+0x2d>
  401140:	e8 3a 04 00 00       	callq  40157f <explode_bomb>
  401145:	44 8d 65 01          	lea    0x1(%rbp),%r12d
  401149:	44 89 e3             	mov    %r12d,%ebx
  40114c:	48 63 ed             	movslq %ebp,%rbp
  40114f:	eb 15                	jmp    401166 <phase_6+0x4e>
  401151:	48 63 c3             	movslq %ebx,%rax
  401154:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax
  401158:	39 44 ac 30          	cmp    %eax,0x30(%rsp,%rbp,4)
  40115c:	75 05                	jne    401163 <phase_6+0x4b>
  40115e:	e8 1c 04 00 00       	callq  40157f <explode_bomb>
  401163:	83 c3 01             	add    $0x1,%ebx
  401166:	83 fb 05             	cmp    $0x5,%ebx
  401169:	7e e6                	jle    401151 <phase_6+0x39>
  40116b:	44 89 e5             	mov    %r12d,%ebp
  40116e:	83 fd 05             	cmp    $0x5,%ebp
  401171:	7e be                	jle    401131 <phase_6+0x19>
  401173:	be 00 00 00 00       	mov    $0x0,%esi
  401178:	eb 26                	jmp    4011a0 <phase_6+0x88>
  40117a:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  40117e:	83 c0 01             	add    $0x1,%eax
  401181:	eb 0d                	jmp    401190 <phase_6+0x78>
  401183:	b8 01 00 00 00       	mov    $0x1,%eax
  401188:	ba 00 43 60 00       	mov    $0x604300,%edx
  40118d:	48 63 ce             	movslq %esi,%rcx
  401190:	39 44 8c 30          	cmp    %eax,0x30(%rsp,%rcx,4)
  401194:	7f e4                	jg     40117a <phase_6+0x62>
  401196:	48 63 c6             	movslq %esi,%rax
  401199:	48 89 14 c4          	mov    %rdx,(%rsp,%rax,8)
  40119d:	83 c6 01             	add    $0x1,%esi
  4011a0:	83 fe 05             	cmp    $0x5,%esi
  4011a3:	7e de                	jle    401183 <phase_6+0x6b>
  4011a5:	48 8b 1c 24          	mov    (%rsp),%rbx
  4011a9:	48 89 d9             	mov    %rbx,%rcx
  4011ac:	b8 01 00 00 00       	mov    $0x1,%eax
  4011b1:	eb 11                	jmp    4011c4 <phase_6+0xac>
  4011b3:	48 63 d0             	movslq %eax,%rdx
  4011b6:	48 8b 14 d4          	mov    (%rsp,%rdx,8),%rdx
  4011ba:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  4011be:	83 c0 01             	add    $0x1,%eax
  4011c1:	48 89 d1             	mov    %rdx,%rcx
  4011c4:	83 f8 05             	cmp    $0x5,%eax
  4011c7:	7e ea                	jle    4011b3 <phase_6+0x9b>
  4011c9:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
  4011d0:	00 
  4011d1:	bd 00 00 00 00       	mov    $0x0,%ebp
  4011d6:	eb 16                	jmp    4011ee <phase_6+0xd6>
  4011d8:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4011dc:	8b 00                	mov    (%rax),%eax
  4011de:	39 03                	cmp    %eax,(%rbx)
  4011e0:	7d 05                	jge    4011e7 <phase_6+0xcf>
  4011e2:	e8 98 03 00 00       	callq  40157f <explode_bomb>
  4011e7:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4011eb:	83 c5 01             	add    $0x1,%ebp
  4011ee:	83 fd 04             	cmp    $0x4,%ebp
  4011f1:	7e e5                	jle    4011d8 <phase_6+0xc0>
  4011f3:	48 83 c4 50          	add    $0x50,%rsp
  4011f7:	5b                   	pop    %rbx
  4011f8:	5d                   	pop    %rbp
  4011f9:	41 5c                	pop    %r12
  4011fb:	c3                   	retq   

00000000004011fc <fun7>:
  4011fc:	48 83 ec 08          	sub    $0x8,%rsp
  401200:	48 85 ff             	test   %rdi,%rdi
  401203:	74 26                	je     40122b <fun7+0x2f>
  401205:	8b 07                	mov    (%rdi),%eax
  401207:	39 f0                	cmp    %esi,%eax
  401209:	7e 0d                	jle    401218 <fun7+0x1c>
  40120b:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40120f:	e8 e8 ff ff ff       	callq  4011fc <fun7>
  401214:	01 c0                	add    %eax,%eax
  401216:	eb 1f                	jmp    401237 <fun7+0x3b>
  401218:	39 f0                	cmp    %esi,%eax
  40121a:	74 16                	je     401232 <fun7+0x36>
  40121c:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  401220:	e8 d7 ff ff ff       	callq  4011fc <fun7>
  401225:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401229:	eb 0c                	jmp    401237 <fun7+0x3b>
  40122b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401230:	eb 05                	jmp    401237 <fun7+0x3b>
  401232:	b8 00 00 00 00       	mov    $0x0,%eax
  401237:	48 83 c4 08          	add    $0x8,%rsp
  40123b:	c3                   	retq   

000000000040123c <secret_phase>:
  40123c:	53                   	push   %rbx
  40123d:	e8 b5 03 00 00       	callq  4015f7 <read_line>
  401242:	ba 0a 00 00 00       	mov    $0xa,%edx
  401247:	be 00 00 00 00       	mov    $0x0,%esi
  40124c:	48 89 c7             	mov    %rax,%rdi
  40124f:	e8 cc f9 ff ff       	callq  400c20 <strtol@plt>
  401254:	48 89 c3             	mov    %rax,%rbx
  401257:	8d 40 ff             	lea    -0x1(%rax),%eax
  40125a:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  40125f:	76 05                	jbe    401266 <secret_phase+0x2a>
  401261:	e8 19 03 00 00       	callq  40157f <explode_bomb>
  401266:	89 de                	mov    %ebx,%esi
  401268:	bf 20 41 60 00       	mov    $0x604120,%edi
  40126d:	e8 8a ff ff ff       	callq  4011fc <fun7>
  401272:	85 c0                	test   %eax,%eax
  401274:	74 05                	je     40127b <secret_phase+0x3f>
  401276:	e8 04 03 00 00       	callq  40157f <explode_bomb>
  40127b:	bf c0 25 40 00       	mov    $0x4025c0,%edi
  401280:	e8 db f8 ff ff       	callq  400b60 <puts@plt>
  401285:	e8 93 04 00 00       	callq  40171d <phase_defused>
  40128a:	5b                   	pop    %rbx
  40128b:	c3                   	retq   
  40128c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000401290 <sig_handler>:
  401290:	48 83 ec 08          	sub    $0x8,%rsp
  401294:	bf 80 26 40 00       	mov    $0x402680,%edi
  401299:	e8 c2 f8 ff ff       	callq  400b60 <puts@plt>
  40129e:	bf 03 00 00 00       	mov    $0x3,%edi
  4012a3:	e8 18 fa ff ff       	callq  400cc0 <sleep@plt>
  4012a8:	bf 6f 28 40 00       	mov    $0x40286f,%edi
  4012ad:	b8 00 00 00 00       	mov    $0x0,%eax
  4012b2:	e8 c9 f8 ff ff       	callq  400b80 <printf@plt>
  4012b7:	48 8b 3d 42 43 20 00 	mov    0x204342(%rip),%rdi        # 605600 <__TMC_END__>
  4012be:	e8 7d f9 ff ff       	callq  400c40 <fflush@plt>
  4012c3:	bf 01 00 00 00       	mov    $0x1,%edi
  4012c8:	e8 f3 f9 ff ff       	callq  400cc0 <sleep@plt>
  4012cd:	bf 77 28 40 00       	mov    $0x402877,%edi
  4012d2:	e8 89 f8 ff ff       	callq  400b60 <puts@plt>
  4012d7:	bf 10 00 00 00       	mov    $0x10,%edi
  4012dc:	e8 bf f9 ff ff       	callq  400ca0 <exit@plt>

00000000004012e1 <invalid_phase>:
  4012e1:	48 83 ec 08          	sub    $0x8,%rsp
  4012e5:	48 89 fe             	mov    %rdi,%rsi
  4012e8:	bf 7f 28 40 00       	mov    $0x40287f,%edi
  4012ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4012f2:	e8 89 f8 ff ff       	callq  400b80 <printf@plt>
  4012f7:	bf 08 00 00 00       	mov    $0x8,%edi
  4012fc:	e8 9f f9 ff ff       	callq  400ca0 <exit@plt>

0000000000401301 <string_length>:
  401301:	b8 00 00 00 00       	mov    $0x0,%eax
  401306:	eb 07                	jmp    40130f <string_length+0xe>
  401308:	48 83 c7 01          	add    $0x1,%rdi
  40130c:	83 c0 01             	add    $0x1,%eax
  40130f:	80 3f 00             	cmpb   $0x0,(%rdi)
  401312:	75 f4                	jne    401308 <string_length+0x7>
  401314:	f3 c3                	repz retq 

0000000000401316 <strings_not_equal>:
  401316:	41 54                	push   %r12
  401318:	55                   	push   %rbp
  401319:	53                   	push   %rbx
  40131a:	48 89 fb             	mov    %rdi,%rbx
  40131d:	48 89 f5             	mov    %rsi,%rbp
  401320:	e8 dc ff ff ff       	callq  401301 <string_length>
  401325:	41 89 c4             	mov    %eax,%r12d
  401328:	48 89 ef             	mov    %rbp,%rdi
  40132b:	e8 d1 ff ff ff       	callq  401301 <string_length>
  401330:	41 39 c4             	cmp    %eax,%r12d
  401333:	75 1d                	jne    401352 <strings_not_equal+0x3c>
  401335:	eb 0d                	jmp    401344 <strings_not_equal+0x2e>
  401337:	3a 45 00             	cmp    0x0(%rbp),%al
  40133a:	75 1d                	jne    401359 <strings_not_equal+0x43>
  40133c:	48 83 c3 01          	add    $0x1,%rbx
  401340:	48 83 c5 01          	add    $0x1,%rbp
  401344:	0f b6 03             	movzbl (%rbx),%eax
  401347:	84 c0                	test   %al,%al
  401349:	75 ec                	jne    401337 <strings_not_equal+0x21>
  40134b:	b8 00 00 00 00       	mov    $0x0,%eax
  401350:	eb 0c                	jmp    40135e <strings_not_equal+0x48>
  401352:	b8 01 00 00 00       	mov    $0x1,%eax
  401357:	eb 05                	jmp    40135e <strings_not_equal+0x48>
  401359:	b8 01 00 00 00       	mov    $0x1,%eax
  40135e:	5b                   	pop    %rbx
  40135f:	5d                   	pop    %rbp
  401360:	41 5c                	pop    %r12
  401362:	c3                   	retq   

0000000000401363 <initialize_bomb>:
  401363:	53                   	push   %rbx
  401364:	48 81 ec 40 20 00 00 	sub    $0x2040,%rsp
  40136b:	be 90 12 40 00       	mov    $0x401290,%esi
  401370:	bf 02 00 00 00       	mov    $0x2,%edi
  401375:	e8 66 f8 ff ff       	callq  400be0 <signal@plt>
  40137a:	be 40 00 00 00       	mov    $0x40,%esi
  40137f:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  401386:	00 
  401387:	e8 f4 f8 ff ff       	callq  400c80 <gethostname@plt>
  40138c:	85 c0                	test   %eax,%eax
  40138e:	74 2a                	je     4013ba <initialize_bomb+0x57>
  401390:	bf b8 26 40 00       	mov    $0x4026b8,%edi
  401395:	e8 c6 f7 ff ff       	callq  400b60 <puts@plt>
  40139a:	bf 08 00 00 00       	mov    $0x8,%edi
  40139f:	e8 fc f8 ff ff       	callq  400ca0 <exit@plt>
  4013a4:	48 8d b4 24 00 20 00 	lea    0x2000(%rsp),%rsi
  4013ab:	00 
  4013ac:	e8 7f f7 ff ff       	callq  400b30 <strcasecmp@plt>
  4013b1:	85 c0                	test   %eax,%eax
  4013b3:	74 21                	je     4013d6 <initialize_bomb+0x73>
  4013b5:	83 c3 01             	add    $0x1,%ebx
  4013b8:	eb 05                	jmp    4013bf <initialize_bomb+0x5c>
  4013ba:	bb 00 00 00 00       	mov    $0x0,%ebx
  4013bf:	48 63 c3             	movslq %ebx,%rax
  4013c2:	48 8b 3c c5 80 53 60 	mov    0x605380(,%rax,8),%rdi
  4013c9:	00 
  4013ca:	48 85 ff             	test   %rdi,%rdi
  4013cd:	75 d5                	jne    4013a4 <initialize_bomb+0x41>
  4013cf:	b8 00 00 00 00       	mov    $0x0,%eax
  4013d4:	eb 05                	jmp    4013db <initialize_bomb+0x78>
  4013d6:	b8 01 00 00 00       	mov    $0x1,%eax
  4013db:	85 c0                	test   %eax,%eax
  4013dd:	75 14                	jne    4013f3 <initialize_bomb+0x90>
  4013df:	bf f0 26 40 00       	mov    $0x4026f0,%edi
  4013e4:	e8 77 f7 ff ff       	callq  400b60 <puts@plt>
  4013e9:	bf 08 00 00 00       	mov    $0x8,%edi
  4013ee:	e8 ad f8 ff ff       	callq  400ca0 <exit@plt>
  4013f3:	48 89 e7             	mov    %rsp,%rdi
  4013f6:	e8 8a 0d 00 00       	callq  402185 <init_driver>
  4013fb:	85 c0                	test   %eax,%eax
  4013fd:	79 1c                	jns    40141b <initialize_bomb+0xb8>
  4013ff:	48 89 e6             	mov    %rsp,%rsi
  401402:	bf 90 28 40 00       	mov    $0x402890,%edi
  401407:	b8 00 00 00 00       	mov    $0x0,%eax
  40140c:	e8 6f f7 ff ff       	callq  400b80 <printf@plt>
  401411:	bf 08 00 00 00       	mov    $0x8,%edi
  401416:	e8 85 f8 ff ff       	callq  400ca0 <exit@plt>
  40141b:	48 81 c4 40 20 00 00 	add    $0x2040,%rsp
  401422:	5b                   	pop    %rbx
  401423:	c3                   	retq   

0000000000401424 <initialize_bomb_solve>:
  401424:	f3 c3                	repz retq 

0000000000401426 <blank_line>:
  401426:	55                   	push   %rbp
  401427:	53                   	push   %rbx
  401428:	48 83 ec 08          	sub    $0x8,%rsp
  40142c:	48 89 fb             	mov    %rdi,%rbx
  40142f:	eb 17                	jmp    401448 <blank_line+0x22>
  401431:	e8 9a f8 ff ff       	callq  400cd0 <__ctype_b_loc@plt>
  401436:	48 8b 00             	mov    (%rax),%rax
  401439:	48 83 c3 01          	add    $0x1,%rbx
  40143d:	48 0f be ed          	movsbq %bpl,%rbp
  401441:	f6 44 68 01 20       	testb  $0x20,0x1(%rax,%rbp,2)
  401446:	74 0f                	je     401457 <blank_line+0x31>
  401448:	0f b6 2b             	movzbl (%rbx),%ebp
  40144b:	40 84 ed             	test   %bpl,%bpl
  40144e:	75 e1                	jne    401431 <blank_line+0xb>
  401450:	b8 01 00 00 00       	mov    $0x1,%eax
  401455:	eb 05                	jmp    40145c <blank_line+0x36>
  401457:	b8 00 00 00 00       	mov    $0x0,%eax
  40145c:	48 83 c4 08          	add    $0x8,%rsp
  401460:	5b                   	pop    %rbx
  401461:	5d                   	pop    %rbp
  401462:	c3                   	retq   

0000000000401463 <skip>:
  401463:	53                   	push   %rbx
  401464:	48 63 05 b1 41 20 00 	movslq 0x2041b1(%rip),%rax        # 60561c <num_input_strings>
  40146b:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
  40146f:	48 c1 e7 04          	shl    $0x4,%rdi
  401473:	48 81 c7 40 56 60 00 	add    $0x605640,%rdi
  40147a:	48 8b 15 9f 41 20 00 	mov    0x20419f(%rip),%rdx        # 605620 <infile>
  401481:	be 50 00 00 00       	mov    $0x50,%esi
  401486:	e8 45 f7 ff ff       	callq  400bd0 <fgets@plt>
  40148b:	48 89 c3             	mov    %rax,%rbx
  40148e:	48 85 c0             	test   %rax,%rax
  401491:	74 0c                	je     40149f <skip+0x3c>
  401493:	48 89 c7             	mov    %rax,%rdi
  401496:	e8 8b ff ff ff       	callq  401426 <blank_line>
  40149b:	85 c0                	test   %eax,%eax
  40149d:	75 c5                	jne    401464 <skip+0x1>
  40149f:	48 89 d8             	mov    %rbx,%rax
  4014a2:	5b                   	pop    %rbx
  4014a3:	c3                   	retq   

00000000004014a4 <send_msg>:
  4014a4:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  4014ab:	41 89 f8             	mov    %edi,%r8d
  4014ae:	44 8b 0d 67 41 20 00 	mov    0x204167(%rip),%r9d        # 60561c <num_input_strings>
  4014b5:	41 8d 41 ff          	lea    -0x1(%r9),%eax
  4014b9:	48 98                	cltq   
  4014bb:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4014bf:	48 c1 e0 04          	shl    $0x4,%rax
  4014c3:	48 8d b0 40 56 60 00 	lea    0x605640(%rax),%rsi
  4014ca:	48 89 f7             	mov    %rsi,%rdi
  4014cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4014d2:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4014d9:	f2 ae                	repnz scas %es:(%rdi),%al
  4014db:	48 f7 d1             	not    %rcx
  4014de:	48 83 c1 63          	add    $0x63,%rcx
  4014e2:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  4014e9:	76 14                	jbe    4014ff <send_msg+0x5b>
  4014eb:	bf 28 27 40 00       	mov    $0x402728,%edi
  4014f0:	e8 8b f6 ff ff       	callq  400b80 <printf@plt>
  4014f5:	bf 08 00 00 00       	mov    $0x8,%edi
  4014fa:	e8 a1 f7 ff ff       	callq  400ca0 <exit@plt>
  4014ff:	45 85 c0             	test   %r8d,%r8d
  401502:	74 08                	je     40150c <send_msg+0x68>
  401504:	41 b8 aa 28 40 00    	mov    $0x4028aa,%r8d
  40150a:	eb 06                	jmp    401512 <send_msg+0x6e>
  40150c:	41 b8 b2 28 40 00    	mov    $0x4028b2,%r8d
  401512:	48 89 34 24          	mov    %rsi,(%rsp)
  401516:	b9 60 4b 60 00       	mov    $0x604b60,%ecx
  40151b:	8b 15 3f 3e 20 00    	mov    0x203e3f(%rip),%edx        # 605360 <bomb_id>
  401521:	be bb 28 40 00       	mov    $0x4028bb,%esi
  401526:	48 8d bc 24 10 20 00 	lea    0x2010(%rsp),%rdi
  40152d:	00 
  40152e:	b8 00 00 00 00       	mov    $0x0,%eax
  401533:	e8 58 f7 ff ff       	callq  400c90 <sprintf@plt>
  401538:	4c 8d 4c 24 10       	lea    0x10(%rsp),%r9
  40153d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401543:	48 8d 8c 24 10 20 00 	lea    0x2010(%rsp),%rcx
  40154a:	00 
  40154b:	ba 60 43 60 00       	mov    $0x604360,%edx
  401550:	be 60 47 60 00       	mov    $0x604760,%esi
  401555:	bf 60 4f 60 00       	mov    $0x604f60,%edi
  40155a:	e8 ef 0d 00 00       	callq  40234e <driver_post>
  40155f:	85 c0                	test   %eax,%eax
  401561:	79 14                	jns    401577 <send_msg+0xd3>
  401563:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401568:	e8 f3 f5 ff ff       	callq  400b60 <puts@plt>
  40156d:	bf 00 00 00 00       	mov    $0x0,%edi
  401572:	e8 29 f7 ff ff       	callq  400ca0 <exit@plt>
  401577:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  40157e:	c3                   	retq   

000000000040157f <explode_bomb>:
  40157f:	48 83 ec 08          	sub    $0x8,%rsp
  401583:	bf ca 28 40 00       	mov    $0x4028ca,%edi
  401588:	e8 d3 f5 ff ff       	callq  400b60 <puts@plt>
  40158d:	bf d3 28 40 00       	mov    $0x4028d3,%edi
  401592:	e8 c9 f5 ff ff       	callq  400b60 <puts@plt>
  401597:	bf 00 00 00 00       	mov    $0x0,%edi
  40159c:	e8 03 ff ff ff       	callq  4014a4 <send_msg>
  4015a1:	bf 50 27 40 00       	mov    $0x402750,%edi
  4015a6:	e8 b5 f5 ff ff       	callq  400b60 <puts@plt>
  4015ab:	bf 08 00 00 00       	mov    $0x8,%edi
  4015b0:	e8 eb f6 ff ff       	callq  400ca0 <exit@plt>

00000000004015b5 <read_six_numbers>:
  4015b5:	48 83 ec 18          	sub    $0x18,%rsp
  4015b9:	48 89 f2             	mov    %rsi,%rdx
  4015bc:	48 8d 76 14          	lea    0x14(%rsi),%rsi
  4015c0:	48 8d 42 10          	lea    0x10(%rdx),%rax
  4015c4:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  4015c8:	48 89 74 24 08       	mov    %rsi,0x8(%rsp)
  4015cd:	48 89 04 24          	mov    %rax,(%rsp)
  4015d1:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
  4015d5:	4c 8d 42 08          	lea    0x8(%rdx),%r8
  4015d9:	be ea 28 40 00       	mov    $0x4028ea,%esi
  4015de:	b8 00 00 00 00       	mov    $0x0,%eax
  4015e3:	e8 68 f6 ff ff       	callq  400c50 <__isoc99_sscanf@plt>
  4015e8:	83 f8 05             	cmp    $0x5,%eax
  4015eb:	7f 05                	jg     4015f2 <read_six_numbers+0x3d>
  4015ed:	e8 8d ff ff ff       	callq  40157f <explode_bomb>
  4015f2:	48 83 c4 18          	add    $0x18,%rsp
  4015f6:	c3                   	retq   

00000000004015f7 <read_line>:
  4015f7:	48 83 ec 08          	sub    $0x8,%rsp
  4015fb:	b8 00 00 00 00       	mov    $0x0,%eax
  401600:	e8 5e fe ff ff       	callq  401463 <skip>
  401605:	48 85 c0             	test   %rax,%rax
  401608:	75 6e                	jne    401678 <read_line+0x81>
  40160a:	48 8b 05 f7 3f 20 00 	mov    0x203ff7(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  401611:	48 39 05 08 40 20 00 	cmp    %rax,0x204008(%rip)        # 605620 <infile>
  401618:	75 14                	jne    40162e <read_line+0x37>
  40161a:	bf fc 28 40 00       	mov    $0x4028fc,%edi
  40161f:	e8 3c f5 ff ff       	callq  400b60 <puts@plt>
  401624:	bf 08 00 00 00       	mov    $0x8,%edi
  401629:	e8 72 f6 ff ff       	callq  400ca0 <exit@plt>
  40162e:	bf 1a 29 40 00       	mov    $0x40291a,%edi
  401633:	e8 e8 f4 ff ff       	callq  400b20 <getenv@plt>
  401638:	48 85 c0             	test   %rax,%rax
  40163b:	74 0a                	je     401647 <read_line+0x50>
  40163d:	bf 00 00 00 00       	mov    $0x0,%edi
  401642:	e8 59 f6 ff ff       	callq  400ca0 <exit@plt>
  401647:	48 8b 05 ba 3f 20 00 	mov    0x203fba(%rip),%rax        # 605608 <stdin@@GLIBC_2.2.5>
  40164e:	48 89 05 cb 3f 20 00 	mov    %rax,0x203fcb(%rip)        # 605620 <infile>
  401655:	b8 00 00 00 00       	mov    $0x0,%eax
  40165a:	e8 04 fe ff ff       	callq  401463 <skip>
  40165f:	48 85 c0             	test   %rax,%rax
  401662:	75 14                	jne    401678 <read_line+0x81>
  401664:	bf fc 28 40 00       	mov    $0x4028fc,%edi
  401669:	e8 f2 f4 ff ff       	callq  400b60 <puts@plt>
  40166e:	bf 00 00 00 00       	mov    $0x0,%edi
  401673:	e8 28 f6 ff ff       	callq  400ca0 <exit@plt>
  401678:	8b 15 9e 3f 20 00    	mov    0x203f9e(%rip),%edx        # 60561c <num_input_strings>
  40167e:	48 63 c2             	movslq %edx,%rax
  401681:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401685:	48 c1 e0 04          	shl    $0x4,%rax
  401689:	4c 8d 80 40 56 60 00 	lea    0x605640(%rax),%r8
  401690:	4c 89 c7             	mov    %r8,%rdi
  401693:	b8 00 00 00 00       	mov    $0x0,%eax
  401698:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40169f:	f2 ae                	repnz scas %es:(%rdi),%al
  4016a1:	48 f7 d1             	not    %rcx
  4016a4:	48 83 e9 01          	sub    $0x1,%rcx
  4016a8:	83 f9 4e             	cmp    $0x4e,%ecx
  4016ab:	7e 46                	jle    4016f3 <read_line+0xfc>
  4016ad:	bf 25 29 40 00       	mov    $0x402925,%edi
  4016b2:	e8 a9 f4 ff ff       	callq  400b60 <puts@plt>
  4016b7:	8b 05 5f 3f 20 00    	mov    0x203f5f(%rip),%eax        # 60561c <num_input_strings>
  4016bd:	8d 50 01             	lea    0x1(%rax),%edx
  4016c0:	89 15 56 3f 20 00    	mov    %edx,0x203f56(%rip)        # 60561c <num_input_strings>
  4016c6:	48 98                	cltq   
  4016c8:	48 6b c0 50          	imul   $0x50,%rax,%rax
  4016cc:	48 bf 2a 2a 2a 74 72 	mov    $0x636e7572742a2a2a,%rdi
  4016d3:	75 6e 63 
  4016d6:	48 89 b8 40 56 60 00 	mov    %rdi,0x605640(%rax)
  4016dd:	48 bf 61 74 65 64 2a 	mov    $0x2a2a2a64657461,%rdi
  4016e4:	2a 2a 00 
  4016e7:	48 89 b8 48 56 60 00 	mov    %rdi,0x605648(%rax)
  4016ee:	e8 8c fe ff ff       	callq  40157f <explode_bomb>
  4016f3:	83 e9 01             	sub    $0x1,%ecx
  4016f6:	48 63 c9             	movslq %ecx,%rcx
  4016f9:	48 63 c2             	movslq %edx,%rax
  4016fc:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  401700:	48 c1 e6 04          	shl    $0x4,%rsi
  401704:	c6 84 31 40 56 60 00 	movb   $0x0,0x605640(%rcx,%rsi,1)
  40170b:	00 
  40170c:	83 c2 01             	add    $0x1,%edx
  40170f:	89 15 07 3f 20 00    	mov    %edx,0x203f07(%rip)        # 60561c <num_input_strings>
  401715:	4c 89 c0             	mov    %r8,%rax
  401718:	48 83 c4 08          	add    $0x8,%rsp
  40171c:	c3                   	retq   

000000000040171d <phase_defused>:
  40171d:	48 83 ec 68          	sub    $0x68,%rsp
  401721:	bf 01 00 00 00       	mov    $0x1,%edi
  401726:	e8 79 fd ff ff       	callq  4014a4 <send_msg>
  40172b:	83 3d ea 3e 20 00 06 	cmpl   $0x6,0x203eea(%rip)        # 60561c <num_input_strings>
  401732:	75 6d                	jne    4017a1 <phase_defused+0x84>
  401734:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  401739:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
  40173e:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
  401743:	be 40 29 40 00       	mov    $0x402940,%esi
  401748:	bf 30 57 60 00       	mov    $0x605730,%edi
  40174d:	b8 00 00 00 00       	mov    $0x0,%eax
  401752:	e8 f9 f4 ff ff       	callq  400c50 <__isoc99_sscanf@plt>
  401757:	83 f8 03             	cmp    $0x3,%eax
  40175a:	75 31                	jne    40178d <phase_defused+0x70>
  40175c:	be 49 29 40 00       	mov    $0x402949,%esi
  401761:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  401766:	e8 ab fb ff ff       	callq  401316 <strings_not_equal>
  40176b:	85 c0                	test   %eax,%eax
  40176d:	75 1e                	jne    40178d <phase_defused+0x70>
  40176f:	bf 78 27 40 00       	mov    $0x402778,%edi
  401774:	e8 e7 f3 ff ff       	callq  400b60 <puts@plt>
  401779:	bf a0 27 40 00       	mov    $0x4027a0,%edi
  40177e:	e8 dd f3 ff ff       	callq  400b60 <puts@plt>
  401783:	b8 00 00 00 00       	mov    $0x0,%eax
  401788:	e8 af fa ff ff       	callq  40123c <secret_phase>
  40178d:	bf d8 27 40 00       	mov    $0x4027d8,%edi
  401792:	e8 c9 f3 ff ff       	callq  400b60 <puts@plt>
  401797:	bf 08 28 40 00       	mov    $0x402808,%edi
  40179c:	e8 bf f3 ff ff       	callq  400b60 <puts@plt>
  4017a1:	48 83 c4 68          	add    $0x68,%rsp
  4017a5:	c3                   	retq   
  4017a6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4017ad:	00 00 00 

00000000004017b0 <rio_readinitb>:
  4017b0:	89 37                	mov    %esi,(%rdi)
  4017b2:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4017b9:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4017bd:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4017c1:	c3                   	retq   

00000000004017c2 <sigalrm_handler>:
  4017c2:	48 83 ec 08          	sub    $0x8,%rsp
  4017c6:	ba 00 00 00 00       	mov    $0x0,%edx
  4017cb:	be 88 2a 40 00       	mov    $0x402a88,%esi
  4017d0:	48 8b 3d 39 3e 20 00 	mov    0x203e39(%rip),%rdi        # 605610 <stderr@@GLIBC_2.2.5>
  4017d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4017dc:	e8 1f f4 ff ff       	callq  400c00 <fprintf@plt>
  4017e1:	bf 01 00 00 00       	mov    $0x1,%edi
  4017e6:	e8 b5 f4 ff ff       	callq  400ca0 <exit@plt>

00000000004017eb <urlencode>:
  4017eb:	41 54                	push   %r12
  4017ed:	55                   	push   %rbp
  4017ee:	53                   	push   %rbx
  4017ef:	48 83 ec 10          	sub    $0x10,%rsp
  4017f3:	48 89 fb             	mov    %rdi,%rbx
  4017f6:	48 89 f5             	mov    %rsi,%rbp
  4017f9:	b8 00 00 00 00       	mov    $0x0,%eax
  4017fe:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401805:	f2 ae                	repnz scas %es:(%rdi),%al
  401807:	48 f7 d1             	not    %rcx
  40180a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  40180d:	e9 93 00 00 00       	jmpq   4018a5 <urlencode+0xba>
  401812:	0f b6 13             	movzbl (%rbx),%edx
  401815:	80 fa 2a             	cmp    $0x2a,%dl
  401818:	0f 94 c1             	sete   %cl
  40181b:	80 fa 2d             	cmp    $0x2d,%dl
  40181e:	0f 94 c0             	sete   %al
  401821:	08 c1                	or     %al,%cl
  401823:	75 1f                	jne    401844 <urlencode+0x59>
  401825:	80 fa 2e             	cmp    $0x2e,%dl
  401828:	74 1a                	je     401844 <urlencode+0x59>
  40182a:	80 fa 5f             	cmp    $0x5f,%dl
  40182d:	74 15                	je     401844 <urlencode+0x59>
  40182f:	8d 42 d0             	lea    -0x30(%rdx),%eax
  401832:	3c 09                	cmp    $0x9,%al
  401834:	76 0e                	jbe    401844 <urlencode+0x59>
  401836:	8d 42 bf             	lea    -0x41(%rdx),%eax
  401839:	3c 19                	cmp    $0x19,%al
  40183b:	76 07                	jbe    401844 <urlencode+0x59>
  40183d:	8d 42 9f             	lea    -0x61(%rdx),%eax
  401840:	3c 19                	cmp    $0x19,%al
  401842:	77 09                	ja     40184d <urlencode+0x62>
  401844:	88 55 00             	mov    %dl,0x0(%rbp)
  401847:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40184b:	eb 51                	jmp    40189e <urlencode+0xb3>
  40184d:	80 fa 20             	cmp    $0x20,%dl
  401850:	75 0a                	jne    40185c <urlencode+0x71>
  401852:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401856:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  40185a:	eb 42                	jmp    40189e <urlencode+0xb3>
  40185c:	8d 42 e0             	lea    -0x20(%rdx),%eax
  40185f:	3c 5f                	cmp    $0x5f,%al
  401861:	0f 96 c1             	setbe  %cl
  401864:	80 fa 09             	cmp    $0x9,%dl
  401867:	0f 94 c0             	sete   %al
  40186a:	08 c1                	or     %al,%cl
  40186c:	74 45                	je     4018b3 <urlencode+0xc8>
  40186e:	0f b6 d2             	movzbl %dl,%edx
  401871:	be 40 2b 40 00       	mov    $0x402b40,%esi
  401876:	48 89 e7             	mov    %rsp,%rdi
  401879:	b8 00 00 00 00       	mov    $0x0,%eax
  40187e:	e8 0d f4 ff ff       	callq  400c90 <sprintf@plt>
  401883:	0f b6 04 24          	movzbl (%rsp),%eax
  401887:	88 45 00             	mov    %al,0x0(%rbp)
  40188a:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40188f:	88 45 01             	mov    %al,0x1(%rbp)
  401892:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401897:	88 45 02             	mov    %al,0x2(%rbp)
  40189a:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40189e:	48 83 c3 01          	add    $0x1,%rbx
  4018a2:	44 89 e0             	mov    %r12d,%eax
  4018a5:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  4018a9:	85 c0                	test   %eax,%eax
  4018ab:	0f 85 61 ff ff ff    	jne    401812 <urlencode+0x27>
  4018b1:	eb 05                	jmp    4018b8 <urlencode+0xcd>
  4018b3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4018b8:	48 83 c4 10          	add    $0x10,%rsp
  4018bc:	5b                   	pop    %rbx
  4018bd:	5d                   	pop    %rbp
  4018be:	41 5c                	pop    %r12
  4018c0:	c3                   	retq   

00000000004018c1 <rio_writen>:
  4018c1:	41 55                	push   %r13
  4018c3:	41 54                	push   %r12
  4018c5:	55                   	push   %rbp
  4018c6:	53                   	push   %rbx
  4018c7:	48 83 ec 08          	sub    $0x8,%rsp
  4018cb:	41 89 fc             	mov    %edi,%r12d
  4018ce:	48 89 f5             	mov    %rsi,%rbp
  4018d1:	49 89 d5             	mov    %rdx,%r13
  4018d4:	48 89 d3             	mov    %rdx,%rbx
  4018d7:	eb 28                	jmp    401901 <rio_writen+0x40>
  4018d9:	48 89 da             	mov    %rbx,%rdx
  4018dc:	48 89 ee             	mov    %rbp,%rsi
  4018df:	44 89 e7             	mov    %r12d,%edi
  4018e2:	e8 89 f2 ff ff       	callq  400b70 <write@plt>
  4018e7:	48 85 c0             	test   %rax,%rax
  4018ea:	7f 0f                	jg     4018fb <rio_writen+0x3a>
  4018ec:	e8 4f f2 ff ff       	callq  400b40 <__errno_location@plt>
  4018f1:	83 38 04             	cmpl   $0x4,(%rax)
  4018f4:	75 15                	jne    40190b <rio_writen+0x4a>
  4018f6:	b8 00 00 00 00       	mov    $0x0,%eax
  4018fb:	48 29 c3             	sub    %rax,%rbx
  4018fe:	48 01 c5             	add    %rax,%rbp
  401901:	48 85 db             	test   %rbx,%rbx
  401904:	75 d3                	jne    4018d9 <rio_writen+0x18>
  401906:	4c 89 e8             	mov    %r13,%rax
  401909:	eb 07                	jmp    401912 <rio_writen+0x51>
  40190b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401912:	48 83 c4 08          	add    $0x8,%rsp
  401916:	5b                   	pop    %rbx
  401917:	5d                   	pop    %rbp
  401918:	41 5c                	pop    %r12
  40191a:	41 5d                	pop    %r13
  40191c:	c3                   	retq   

000000000040191d <rio_read>:
  40191d:	41 56                	push   %r14
  40191f:	41 55                	push   %r13
  401921:	41 54                	push   %r12
  401923:	55                   	push   %rbp
  401924:	53                   	push   %rbx
  401925:	48 89 fb             	mov    %rdi,%rbx
  401928:	49 89 f6             	mov    %rsi,%r14
  40192b:	49 89 d5             	mov    %rdx,%r13
  40192e:	4c 8d 67 10          	lea    0x10(%rdi),%r12
  401932:	eb 2a                	jmp    40195e <rio_read+0x41>
  401934:	ba 00 20 00 00       	mov    $0x2000,%edx
  401939:	4c 89 e6             	mov    %r12,%rsi
  40193c:	8b 3b                	mov    (%rbx),%edi
  40193e:	e8 6d f2 ff ff       	callq  400bb0 <read@plt>
  401943:	89 43 04             	mov    %eax,0x4(%rbx)
  401946:	85 c0                	test   %eax,%eax
  401948:	79 0c                	jns    401956 <rio_read+0x39>
  40194a:	e8 f1 f1 ff ff       	callq  400b40 <__errno_location@plt>
  40194f:	83 38 04             	cmpl   $0x4,(%rax)
  401952:	74 0a                	je     40195e <rio_read+0x41>
  401954:	eb 37                	jmp    40198d <rio_read+0x70>
  401956:	85 c0                	test   %eax,%eax
  401958:	74 3c                	je     401996 <rio_read+0x79>
  40195a:	4c 89 63 08          	mov    %r12,0x8(%rbx)
  40195e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  401961:	85 ed                	test   %ebp,%ebp
  401963:	7e cf                	jle    401934 <rio_read+0x17>
  401965:	89 e8                	mov    %ebp,%eax
  401967:	4c 39 e8             	cmp    %r13,%rax
  40196a:	72 03                	jb     40196f <rio_read+0x52>
  40196c:	44 89 ed             	mov    %r13d,%ebp
  40196f:	4c 63 e5             	movslq %ebp,%r12
  401972:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  401976:	4c 89 e2             	mov    %r12,%rdx
  401979:	4c 89 f7             	mov    %r14,%rdi
  40197c:	e8 af f2 ff ff       	callq  400c30 <memcpy@plt>
  401981:	4c 01 63 08          	add    %r12,0x8(%rbx)
  401985:	29 6b 04             	sub    %ebp,0x4(%rbx)
  401988:	4c 89 e0             	mov    %r12,%rax
  40198b:	eb 0e                	jmp    40199b <rio_read+0x7e>
  40198d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401994:	eb 05                	jmp    40199b <rio_read+0x7e>
  401996:	b8 00 00 00 00       	mov    $0x0,%eax
  40199b:	5b                   	pop    %rbx
  40199c:	5d                   	pop    %rbp
  40199d:	41 5c                	pop    %r12
  40199f:	41 5d                	pop    %r13
  4019a1:	41 5e                	pop    %r14
  4019a3:	c3                   	retq   

00000000004019a4 <rio_readlineb>:
  4019a4:	41 55                	push   %r13
  4019a6:	41 54                	push   %r12
  4019a8:	55                   	push   %rbp
  4019a9:	53                   	push   %rbx
  4019aa:	48 83 ec 18          	sub    $0x18,%rsp
  4019ae:	49 89 fd             	mov    %rdi,%r13
  4019b1:	48 89 f5             	mov    %rsi,%rbp
  4019b4:	49 89 d4             	mov    %rdx,%r12
  4019b7:	bb 01 00 00 00       	mov    $0x1,%ebx
  4019bc:	eb 3d                	jmp    4019fb <rio_readlineb+0x57>
  4019be:	ba 01 00 00 00       	mov    $0x1,%edx
  4019c3:	48 8d 74 24 0f       	lea    0xf(%rsp),%rsi
  4019c8:	4c 89 ef             	mov    %r13,%rdi
  4019cb:	e8 4d ff ff ff       	callq  40191d <rio_read>
  4019d0:	83 f8 01             	cmp    $0x1,%eax
  4019d3:	75 12                	jne    4019e7 <rio_readlineb+0x43>
  4019d5:	48 8d 55 01          	lea    0x1(%rbp),%rdx
  4019d9:	0f b6 44 24 0f       	movzbl 0xf(%rsp),%eax
  4019de:	88 45 00             	mov    %al,0x0(%rbp)
  4019e1:	3c 0a                	cmp    $0xa,%al
  4019e3:	75 0f                	jne    4019f4 <rio_readlineb+0x50>
  4019e5:	eb 1b                	jmp    401a02 <rio_readlineb+0x5e>
  4019e7:	85 c0                	test   %eax,%eax
  4019e9:	75 23                	jne    401a0e <rio_readlineb+0x6a>
  4019eb:	48 83 fb 01          	cmp    $0x1,%rbx
  4019ef:	90                   	nop
  4019f0:	75 13                	jne    401a05 <rio_readlineb+0x61>
  4019f2:	eb 23                	jmp    401a17 <rio_readlineb+0x73>
  4019f4:	48 83 c3 01          	add    $0x1,%rbx
  4019f8:	48 89 d5             	mov    %rdx,%rbp
  4019fb:	4c 39 e3             	cmp    %r12,%rbx
  4019fe:	72 be                	jb     4019be <rio_readlineb+0x1a>
  401a00:	eb 03                	jmp    401a05 <rio_readlineb+0x61>
  401a02:	48 89 d5             	mov    %rdx,%rbp
  401a05:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  401a09:	48 89 d8             	mov    %rbx,%rax
  401a0c:	eb 0e                	jmp    401a1c <rio_readlineb+0x78>
  401a0e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401a15:	eb 05                	jmp    401a1c <rio_readlineb+0x78>
  401a17:	b8 00 00 00 00       	mov    $0x0,%eax
  401a1c:	48 83 c4 18          	add    $0x18,%rsp
  401a20:	5b                   	pop    %rbx
  401a21:	5d                   	pop    %rbp
  401a22:	41 5c                	pop    %r12
  401a24:	41 5d                	pop    %r13
  401a26:	c3                   	retq   

0000000000401a27 <submitr>:
  401a27:	41 57                	push   %r15
  401a29:	41 56                	push   %r14
  401a2b:	41 55                	push   %r13
  401a2d:	41 54                	push   %r12
  401a2f:	55                   	push   %rbp
  401a30:	53                   	push   %rbx
  401a31:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  401a38:	49 89 fc             	mov    %rdi,%r12
  401a3b:	89 74 24 1c          	mov    %esi,0x1c(%rsp)
  401a3f:	48 89 54 24 10       	mov    %rdx,0x10(%rsp)
  401a44:	49 89 cf             	mov    %rcx,%r15
  401a47:	4d 89 c6             	mov    %r8,%r14
  401a4a:	4d 89 cd             	mov    %r9,%r13
  401a4d:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  401a54:	00 
  401a55:	c7 84 24 2c 20 00 00 	movl   $0x0,0x202c(%rsp)
  401a5c:	00 00 00 00 
  401a60:	ba 00 00 00 00       	mov    $0x0,%edx
  401a65:	be 01 00 00 00       	mov    $0x1,%esi
  401a6a:	bf 02 00 00 00       	mov    $0x2,%edi
  401a6f:	e8 6c f2 ff ff       	callq  400ce0 <socket@plt>
  401a74:	89 c5                	mov    %eax,%ebp
  401a76:	85 c0                	test   %eax,%eax
  401a78:	79 4e                	jns    401ac8 <submitr+0xa1>
  401a7a:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  401a81:	3a 20 43 
  401a84:	48 89 03             	mov    %rax,(%rbx)
  401a87:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  401a8e:	20 75 6e 
  401a91:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401a95:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  401a9c:	74 6f 20 
  401a9f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401aa3:	48 b8 63 72 65 61 74 	mov    $0x7320657461657263,%rax
  401aaa:	65 20 73 
  401aad:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401ab1:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  401ab8:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  401abe:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401ac3:	e9 83 06 00 00       	jmpq   40214b <submitr+0x724>
  401ac8:	4c 89 e7             	mov    %r12,%rdi
  401acb:	e8 20 f1 ff ff       	callq  400bf0 <gethostbyname@plt>
  401ad0:	48 85 c0             	test   %rax,%rax
  401ad3:	75 75                	jne    401b4a <submitr+0x123>
  401ad5:	48 b8 45 72 72 6f 72 	mov    $0x44203a726f727245,%rax
  401adc:	3a 20 44 
  401adf:	48 89 03             	mov    %rax,(%rbx)
  401ae2:	48 b8 4e 53 20 69 73 	mov    $0x6e7520736920534e,%rax
  401ae9:	20 75 6e 
  401aec:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401af0:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  401af7:	74 6f 20 
  401afa:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401afe:	48 b8 72 65 73 6f 6c 	mov    $0x2065766c6f736572,%rax
  401b05:	76 65 20 
  401b08:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401b0c:	48 b8 41 75 74 6f 6c 	mov    $0x2062616c6f747541,%rax
  401b13:	61 62 20 
  401b16:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401b1a:	48 b8 73 65 72 76 65 	mov    $0x6120726576726573,%rax
  401b21:	72 20 61 
  401b24:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401b28:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  401b2f:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  401b35:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  401b39:	89 ef                	mov    %ebp,%edi
  401b3b:	e8 60 f0 ff ff       	callq  400ba0 <close@plt>
  401b40:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401b45:	e9 01 06 00 00       	jmpq   40214b <submitr+0x724>
  401b4a:	48 c7 84 24 40 a0 00 	movq   $0x0,0xa040(%rsp)
  401b51:	00 00 00 00 00 
  401b56:	48 c7 84 24 48 a0 00 	movq   $0x0,0xa048(%rsp)
  401b5d:	00 00 00 00 00 
  401b62:	66 c7 84 24 40 a0 00 	movw   $0x2,0xa040(%rsp)
  401b69:	00 02 00 
  401b6c:	48 8b 48 18          	mov    0x18(%rax),%rcx
  401b70:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401b74:	48 8d b4 24 44 a0 00 	lea    0xa044(%rsp),%rsi
  401b7b:	00 
  401b7c:	48 8b 39             	mov    (%rcx),%rdi
  401b7f:	e8 dc f0 ff ff       	callq  400c60 <bcopy@plt>
  401b84:	0f b7 44 24 1c       	movzwl 0x1c(%rsp),%eax
  401b89:	66 c1 c8 08          	ror    $0x8,%ax
  401b8d:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%rsp)
  401b94:	00 
  401b95:	ba 10 00 00 00       	mov    $0x10,%edx
  401b9a:	48 8d b4 24 40 a0 00 	lea    0xa040(%rsp),%rsi
  401ba1:	00 
  401ba2:	89 ef                	mov    %ebp,%edi
  401ba4:	e8 07 f1 ff ff       	callq  400cb0 <connect@plt>
  401ba9:	85 c0                	test   %eax,%eax
  401bab:	79 67                	jns    401c14 <submitr+0x1ed>
  401bad:	48 b8 45 72 72 6f 72 	mov    $0x55203a726f727245,%rax
  401bb4:	3a 20 55 
  401bb7:	48 89 03             	mov    %rax,(%rbx)
  401bba:	48 b8 6e 61 62 6c 65 	mov    $0x6f7420656c62616e,%rax
  401bc1:	20 74 6f 
  401bc4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401bc8:	48 b8 20 63 6f 6e 6e 	mov    $0x7463656e6e6f6320,%rax
  401bcf:	65 63 74 
  401bd2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401bd6:	48 b8 20 74 6f 20 74 	mov    $0x20656874206f7420,%rax
  401bdd:	68 65 20 
  401be0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401be4:	48 b8 41 75 74 6f 6c 	mov    $0x2062616c6f747541,%rax
  401beb:	61 62 20 
  401bee:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401bf2:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  401bf9:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  401bff:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  401c03:	89 ef                	mov    %ebp,%edi
  401c05:	e8 96 ef ff ff       	callq  400ba0 <close@plt>
  401c0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c0f:	e9 37 05 00 00       	jmpq   40214b <submitr+0x724>
  401c14:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401c1b:	4c 89 ef             	mov    %r13,%rdi
  401c1e:	b8 00 00 00 00       	mov    $0x0,%eax
  401c23:	48 89 d1             	mov    %rdx,%rcx
  401c26:	f2 ae                	repnz scas %es:(%rdi),%al
  401c28:	48 f7 d1             	not    %rcx
  401c2b:	48 89 ce             	mov    %rcx,%rsi
  401c2e:	48 8b 7c 24 10       	mov    0x10(%rsp),%rdi
  401c33:	48 89 d1             	mov    %rdx,%rcx
  401c36:	f2 ae                	repnz scas %es:(%rdi),%al
  401c38:	48 f7 d1             	not    %rcx
  401c3b:	49 89 c8             	mov    %rcx,%r8
  401c3e:	4c 89 ff             	mov    %r15,%rdi
  401c41:	48 89 d1             	mov    %rdx,%rcx
  401c44:	f2 ae                	repnz scas %es:(%rdi),%al
  401c46:	49 29 c8             	sub    %rcx,%r8
  401c49:	4c 89 f7             	mov    %r14,%rdi
  401c4c:	48 89 d1             	mov    %rdx,%rcx
  401c4f:	f2 ae                	repnz scas %es:(%rdi),%al
  401c51:	49 29 c8             	sub    %rcx,%r8
  401c54:	48 8d 44 76 fd       	lea    -0x3(%rsi,%rsi,2),%rax
  401c59:	49 8d 44 00 7b       	lea    0x7b(%r8,%rax,1),%rax
  401c5e:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401c64:	76 72                	jbe    401cd8 <submitr+0x2b1>
  401c66:	48 b8 45 72 72 6f 72 	mov    $0x52203a726f727245,%rax
  401c6d:	3a 20 52 
  401c70:	48 89 03             	mov    %rax,(%rbx)
  401c73:	48 b8 65 73 75 6c 74 	mov    $0x747320746c757365,%rax
  401c7a:	20 73 74 
  401c7d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401c81:	48 b8 72 69 6e 67 20 	mov    $0x6f6f7420676e6972,%rax
  401c88:	74 6f 6f 
  401c8b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401c8f:	48 b8 20 6c 61 72 67 	mov    $0x202e656772616c20,%rax
  401c96:	65 2e 20 
  401c99:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401c9d:	48 b8 49 6e 63 72 65 	mov    $0x6573616572636e49,%rax
  401ca4:	61 73 65 
  401ca7:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401cab:	48 b8 20 53 55 42 4d 	mov    $0x5254494d42555320,%rax
  401cb2:	49 54 52 
  401cb5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401cb9:	48 b8 5f 4d 41 58 42 	mov    $0x46554258414d5f,%rax
  401cc0:	55 46 00 
  401cc3:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401cc7:	89 ef                	mov    %ebp,%edi
  401cc9:	e8 d2 ee ff ff       	callq  400ba0 <close@plt>
  401cce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401cd3:	e9 73 04 00 00       	jmpq   40214b <submitr+0x724>
  401cd8:	48 8d b4 24 30 40 00 	lea    0x4030(%rsp),%rsi
  401cdf:	00 
  401ce0:	b9 00 04 00 00       	mov    $0x400,%ecx
  401ce5:	b8 00 00 00 00       	mov    $0x0,%eax
  401cea:	48 89 f7             	mov    %rsi,%rdi
  401ced:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401cf0:	4c 89 ef             	mov    %r13,%rdi
  401cf3:	e8 f3 fa ff ff       	callq  4017eb <urlencode>
  401cf8:	85 c0                	test   %eax,%eax
  401cfa:	0f 89 8a 00 00 00    	jns    401d8a <submitr+0x363>
  401d00:	48 b8 45 72 72 6f 72 	mov    $0x52203a726f727245,%rax
  401d07:	3a 20 52 
  401d0a:	48 89 03             	mov    %rax,(%rbx)
  401d0d:	48 b8 65 73 75 6c 74 	mov    $0x747320746c757365,%rax
  401d14:	20 73 74 
  401d17:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401d1b:	48 b8 72 69 6e 67 20 	mov    $0x6e6f6320676e6972,%rax
  401d22:	63 6f 6e 
  401d25:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401d29:	48 b8 74 61 69 6e 73 	mov    $0x6e6120736e696174,%rax
  401d30:	20 61 6e 
  401d33:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401d37:	48 b8 20 69 6c 6c 65 	mov    $0x6c6167656c6c6920,%rax
  401d3e:	67 61 6c 
  401d41:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401d45:	48 b8 20 6f 72 20 75 	mov    $0x72706e7520726f20,%rax
  401d4c:	6e 70 72 
  401d4f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401d53:	48 b8 69 6e 74 61 62 	mov    $0x20656c6261746e69,%rax
  401d5a:	6c 65 20 
  401d5d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401d61:	48 b8 63 68 61 72 61 	mov    $0x6574636172616863,%rax
  401d68:	63 74 65 
  401d6b:	48 89 43 38          	mov    %rax,0x38(%rbx)
  401d6f:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  401d75:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  401d79:	89 ef                	mov    %ebp,%edi
  401d7b:	e8 20 ee ff ff       	callq  400ba0 <close@plt>
  401d80:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d85:	e9 c1 03 00 00       	jmpq   40214b <submitr+0x724>
  401d8a:	4c 89 24 24          	mov    %r12,(%rsp)
  401d8e:	4c 8d 8c 24 30 40 00 	lea    0x4030(%rsp),%r9
  401d95:	00 
  401d96:	4d 89 f8             	mov    %r15,%r8
  401d99:	4c 89 f1             	mov    %r14,%rcx
  401d9c:	48 8b 54 24 10       	mov    0x10(%rsp),%rdx
  401da1:	be b0 2a 40 00       	mov    $0x402ab0,%esi
  401da6:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  401dad:	00 
  401dae:	b8 00 00 00 00       	mov    $0x0,%eax
  401db3:	e8 d8 ee ff ff       	callq  400c90 <sprintf@plt>
  401db8:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  401dbf:	00 
  401dc0:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc5:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401dcc:	f2 ae                	repnz scas %es:(%rdi),%al
  401dce:	48 f7 d1             	not    %rcx
  401dd1:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  401dd5:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401ddc:	00 
  401ddd:	89 ef                	mov    %ebp,%edi
  401ddf:	e8 dd fa ff ff       	callq  4018c1 <rio_writen>
  401de4:	48 85 c0             	test   %rax,%rax
  401de7:	79 6b                	jns    401e54 <submitr+0x42d>
  401de9:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  401df0:	3a 20 43 
  401df3:	48 89 03             	mov    %rax,(%rbx)
  401df6:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  401dfd:	20 75 6e 
  401e00:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401e04:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  401e0b:	74 6f 20 
  401e0e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401e12:	48 b8 77 72 69 74 65 	mov    $0x6f74206574697277,%rax
  401e19:	20 74 6f 
  401e1c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401e20:	48 b8 20 74 68 65 20 	mov    $0x7475412065687420,%rax
  401e27:	41 75 74 
  401e2a:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401e2e:	48 b8 6f 6c 61 62 20 	mov    $0x7265732062616c6f,%rax
  401e35:	73 65 72 
  401e38:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401e3c:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  401e43:	89 ef                	mov    %ebp,%edi
  401e45:	e8 56 ed ff ff       	callq  400ba0 <close@plt>
  401e4a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e4f:	e9 f7 02 00 00       	jmpq   40214b <submitr+0x724>
  401e54:	89 ee                	mov    %ebp,%esi
  401e56:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401e5d:	00 
  401e5e:	e8 4d f9 ff ff       	callq  4017b0 <rio_readinitb>
  401e63:	ba 00 20 00 00       	mov    $0x2000,%edx
  401e68:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401e6f:	00 
  401e70:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401e77:	00 
  401e78:	e8 27 fb ff ff       	callq  4019a4 <rio_readlineb>
  401e7d:	48 85 c0             	test   %rax,%rax
  401e80:	7f 7f                	jg     401f01 <submitr+0x4da>
  401e82:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  401e89:	3a 20 43 
  401e8c:	48 89 03             	mov    %rax,(%rbx)
  401e8f:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  401e96:	20 75 6e 
  401e99:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401e9d:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  401ea4:	74 6f 20 
  401ea7:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401eab:	48 b8 72 65 61 64 20 	mov    $0x7269662064616572,%rax
  401eb2:	66 69 72 
  401eb5:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401eb9:	48 b8 73 74 20 68 65 	mov    $0x6564616568207473,%rax
  401ec0:	61 64 65 
  401ec3:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401ec7:	48 b8 72 20 66 72 6f 	mov    $0x41206d6f72662072,%rax
  401ece:	6d 20 41 
  401ed1:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401ed5:	48 b8 75 74 6f 6c 61 	mov    $0x732062616c6f7475,%rax
  401edc:	62 20 73 
  401edf:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401ee3:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  401eea:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  401ef0:	89 ef                	mov    %ebp,%edi
  401ef2:	e8 a9 ec ff ff       	callq  400ba0 <close@plt>
  401ef7:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401efc:	e9 4a 02 00 00       	jmpq   40214b <submitr+0x724>
  401f01:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
  401f06:	48 8d 8c 24 2c 20 00 	lea    0x202c(%rsp),%rcx
  401f0d:	00 
  401f0e:	48 8d 94 24 30 20 00 	lea    0x2030(%rsp),%rdx
  401f15:	00 
  401f16:	be 47 2b 40 00       	mov    $0x402b47,%esi
  401f1b:	48 8d bc 24 30 60 00 	lea    0x6030(%rsp),%rdi
  401f22:	00 
  401f23:	b8 00 00 00 00       	mov    $0x0,%eax
  401f28:	e8 23 ed ff ff       	callq  400c50 <__isoc99_sscanf@plt>
  401f2d:	e9 95 00 00 00       	jmpq   401fc7 <submitr+0x5a0>
  401f32:	ba 00 20 00 00       	mov    $0x2000,%edx
  401f37:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401f3e:	00 
  401f3f:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  401f46:	00 
  401f47:	e8 58 fa ff ff       	callq  4019a4 <rio_readlineb>
  401f4c:	48 85 c0             	test   %rax,%rax
  401f4f:	7f 76                	jg     401fc7 <submitr+0x5a0>
  401f51:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  401f58:	3a 20 43 
  401f5b:	48 89 03             	mov    %rax,(%rbx)
  401f5e:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  401f65:	20 75 6e 
  401f68:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401f6c:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  401f73:	74 6f 20 
  401f76:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401f7a:	48 b8 72 65 61 64 20 	mov    $0x6165682064616572,%rax
  401f81:	68 65 61 
  401f84:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401f88:	48 b8 64 65 72 73 20 	mov    $0x6f72662073726564,%rax
  401f8f:	66 72 6f 
  401f92:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401f96:	48 b8 6d 20 41 75 74 	mov    $0x616c6f747541206d,%rax
  401f9d:	6f 6c 61 
  401fa0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401fa4:	48 b8 62 20 73 65 72 	mov    $0x7265767265732062,%rax
  401fab:	76 65 72 
  401fae:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401fb2:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  401fb6:	89 ef                	mov    %ebp,%edi
  401fb8:	e8 e3 eb ff ff       	callq  400ba0 <close@plt>
  401fbd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401fc2:	e9 84 01 00 00       	jmpq   40214b <submitr+0x724>
  401fc7:	0f b6 84 24 30 60 00 	movzbl 0x6030(%rsp),%eax
  401fce:	00 
  401fcf:	83 e8 0d             	sub    $0xd,%eax
  401fd2:	75 15                	jne    401fe9 <submitr+0x5c2>
  401fd4:	0f b6 84 24 31 60 00 	movzbl 0x6031(%rsp),%eax
  401fdb:	00 
  401fdc:	83 e8 0a             	sub    $0xa,%eax
  401fdf:	75 08                	jne    401fe9 <submitr+0x5c2>
  401fe1:	0f b6 84 24 32 60 00 	movzbl 0x6032(%rsp),%eax
  401fe8:	00 
  401fe9:	85 c0                	test   %eax,%eax
  401feb:	0f 85 41 ff ff ff    	jne    401f32 <submitr+0x50b>
  401ff1:	ba 00 20 00 00       	mov    $0x2000,%edx
  401ff6:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  401ffd:	00 
  401ffe:	48 8d bc 24 30 80 00 	lea    0x8030(%rsp),%rdi
  402005:	00 
  402006:	e8 99 f9 ff ff       	callq  4019a4 <rio_readlineb>
  40200b:	48 85 c0             	test   %rax,%rax
  40200e:	0f 8f 80 00 00 00    	jg     402094 <submitr+0x66d>
  402014:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  40201b:	3a 20 43 
  40201e:	48 89 03             	mov    %rax,(%rbx)
  402021:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  402028:	20 75 6e 
  40202b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40202f:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  402036:	74 6f 20 
  402039:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40203d:	48 b8 72 65 61 64 20 	mov    $0x6174732064616572,%rax
  402044:	73 74 61 
  402047:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40204b:	48 b8 74 75 73 20 6d 	mov    $0x7373656d20737574,%rax
  402052:	65 73 73 
  402055:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402059:	48 b8 61 67 65 20 66 	mov    $0x6d6f726620656761,%rax
  402060:	72 6f 6d 
  402063:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402067:	48 b8 20 41 75 74 6f 	mov    $0x62616c6f74754120,%rax
  40206e:	6c 61 62 
  402071:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402075:	48 b8 20 73 65 72 76 	mov    $0x72657672657320,%rax
  40207c:	65 72 00 
  40207f:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402083:	89 ef                	mov    %ebp,%edi
  402085:	e8 16 eb ff ff       	callq  400ba0 <close@plt>
  40208a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40208f:	e9 b7 00 00 00       	jmpq   40214b <submitr+0x724>
  402094:	8b 94 24 2c 20 00 00 	mov    0x202c(%rsp),%edx
  40209b:	81 fa c8 00 00 00    	cmp    $0xc8,%edx
  4020a1:	74 28                	je     4020cb <submitr+0x6a4>
  4020a3:	48 8d 4c 24 20       	lea    0x20(%rsp),%rcx
  4020a8:	be 10 2b 40 00       	mov    $0x402b10,%esi
  4020ad:	48 89 df             	mov    %rbx,%rdi
  4020b0:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b5:	e8 d6 eb ff ff       	callq  400c90 <sprintf@plt>
  4020ba:	89 ef                	mov    %ebp,%edi
  4020bc:	e8 df ea ff ff       	callq  400ba0 <close@plt>
  4020c1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4020c6:	e9 80 00 00 00       	jmpq   40214b <submitr+0x724>
  4020cb:	48 8d b4 24 30 60 00 	lea    0x6030(%rsp),%rsi
  4020d2:	00 
  4020d3:	48 89 df             	mov    %rbx,%rdi
  4020d6:	e8 75 ea ff ff       	callq  400b50 <strcpy@plt>
  4020db:	89 ef                	mov    %ebp,%edi
  4020dd:	e8 be ea ff ff       	callq  400ba0 <close@plt>
  4020e2:	0f b6 03             	movzbl (%rbx),%eax
  4020e5:	83 e8 4f             	sub    $0x4f,%eax
  4020e8:	75 18                	jne    402102 <submitr+0x6db>
  4020ea:	0f b6 53 01          	movzbl 0x1(%rbx),%edx
  4020ee:	83 ea 4b             	sub    $0x4b,%edx
  4020f1:	75 11                	jne    402104 <submitr+0x6dd>
  4020f3:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  4020f7:	83 ea 0a             	sub    $0xa,%edx
  4020fa:	75 08                	jne    402104 <submitr+0x6dd>
  4020fc:	0f b6 53 03          	movzbl 0x3(%rbx),%edx
  402100:	eb 02                	jmp    402104 <submitr+0x6dd>
  402102:	89 c2                	mov    %eax,%edx
  402104:	85 d2                	test   %edx,%edx
  402106:	74 30                	je     402138 <submitr+0x711>
  402108:	bf 58 2b 40 00       	mov    $0x402b58,%edi
  40210d:	b9 05 00 00 00       	mov    $0x5,%ecx
  402112:	48 89 de             	mov    %rbx,%rsi
  402115:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402117:	0f 97 c1             	seta   %cl
  40211a:	0f 92 c2             	setb   %dl
  40211d:	38 d1                	cmp    %dl,%cl
  40211f:	74 1e                	je     40213f <submitr+0x718>
  402121:	85 c0                	test   %eax,%eax
  402123:	75 0d                	jne    402132 <submitr+0x70b>
  402125:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402129:	83 e8 4b             	sub    $0x4b,%eax
  40212c:	75 04                	jne    402132 <submitr+0x70b>
  40212e:	0f b6 43 02          	movzbl 0x2(%rbx),%eax
  402132:	85 c0                	test   %eax,%eax
  402134:	75 10                	jne    402146 <submitr+0x71f>
  402136:	eb 13                	jmp    40214b <submitr+0x724>
  402138:	b8 00 00 00 00       	mov    $0x0,%eax
  40213d:	eb 0c                	jmp    40214b <submitr+0x724>
  40213f:	b8 00 00 00 00       	mov    $0x0,%eax
  402144:	eb 05                	jmp    40214b <submitr+0x724>
  402146:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40214b:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402152:	5b                   	pop    %rbx
  402153:	5d                   	pop    %rbp
  402154:	41 5c                	pop    %r12
  402156:	41 5d                	pop    %r13
  402158:	41 5e                	pop    %r14
  40215a:	41 5f                	pop    %r15
  40215c:	c3                   	retq   

000000000040215d <init_timeout>:
  40215d:	53                   	push   %rbx
  40215e:	89 fb                	mov    %edi,%ebx
  402160:	85 ff                	test   %edi,%edi
  402162:	74 1f                	je     402183 <init_timeout+0x26>
  402164:	85 ff                	test   %edi,%edi
  402166:	79 05                	jns    40216d <init_timeout+0x10>
  402168:	bb 00 00 00 00       	mov    $0x0,%ebx
  40216d:	be c2 17 40 00       	mov    $0x4017c2,%esi
  402172:	bf 0e 00 00 00       	mov    $0xe,%edi
  402177:	e8 64 ea ff ff       	callq  400be0 <signal@plt>
  40217c:	89 df                	mov    %ebx,%edi
  40217e:	e8 0d ea ff ff       	callq  400b90 <alarm@plt>
  402183:	5b                   	pop    %rbx
  402184:	c3                   	retq   

0000000000402185 <init_driver>:
  402185:	55                   	push   %rbp
  402186:	53                   	push   %rbx
  402187:	48 83 ec 18          	sub    $0x18,%rsp
  40218b:	48 89 fd             	mov    %rdi,%rbp
  40218e:	be 01 00 00 00       	mov    $0x1,%esi
  402193:	bf 0d 00 00 00       	mov    $0xd,%edi
  402198:	e8 43 ea ff ff       	callq  400be0 <signal@plt>
  40219d:	be 01 00 00 00       	mov    $0x1,%esi
  4021a2:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4021a7:	e8 34 ea ff ff       	callq  400be0 <signal@plt>
  4021ac:	be 01 00 00 00       	mov    $0x1,%esi
  4021b1:	bf 1d 00 00 00       	mov    $0x1d,%edi
  4021b6:	e8 25 ea ff ff       	callq  400be0 <signal@plt>
  4021bb:	ba 00 00 00 00       	mov    $0x0,%edx
  4021c0:	be 01 00 00 00       	mov    $0x1,%esi
  4021c5:	bf 02 00 00 00       	mov    $0x2,%edi
  4021ca:	e8 11 eb ff ff       	callq  400ce0 <socket@plt>
  4021cf:	89 c3                	mov    %eax,%ebx
  4021d1:	85 c0                	test   %eax,%eax
  4021d3:	79 4f                	jns    402224 <init_driver+0x9f>
  4021d5:	48 b8 45 72 72 6f 72 	mov    $0x43203a726f727245,%rax
  4021dc:	3a 20 43 
  4021df:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4021e3:	48 b8 6c 69 65 6e 74 	mov    $0x6e7520746e65696c,%rax
  4021ea:	20 75 6e 
  4021ed:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4021f1:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  4021f8:	74 6f 20 
  4021fb:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4021ff:	48 b8 63 72 65 61 74 	mov    $0x7320657461657263,%rax
  402206:	65 20 73 
  402209:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40220d:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402214:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  40221a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40221f:	e9 23 01 00 00       	jmpq   402347 <init_driver+0x1c2>
  402224:	bf 5d 2b 40 00       	mov    $0x402b5d,%edi
  402229:	e8 c2 e9 ff ff       	callq  400bf0 <gethostbyname@plt>
  40222e:	48 85 c0             	test   %rax,%rax
  402231:	75 68                	jne    40229b <init_driver+0x116>
  402233:	48 b8 45 72 72 6f 72 	mov    $0x44203a726f727245,%rax
  40223a:	3a 20 44 
  40223d:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402241:	48 b8 4e 53 20 69 73 	mov    $0x6e7520736920534e,%rax
  402248:	20 75 6e 
  40224b:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40224f:	48 b8 61 62 6c 65 20 	mov    $0x206f7420656c6261,%rax
  402256:	74 6f 20 
  402259:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40225d:	48 b8 72 65 73 6f 6c 	mov    $0x2065766c6f736572,%rax
  402264:	76 65 20 
  402267:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40226b:	48 b8 73 65 72 76 65 	mov    $0x6120726576726573,%rax
  402272:	72 20 61 
  402275:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402279:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402280:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402286:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  40228a:	89 df                	mov    %ebx,%edi
  40228c:	e8 0f e9 ff ff       	callq  400ba0 <close@plt>
  402291:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402296:	e9 ac 00 00 00       	jmpq   402347 <init_driver+0x1c2>
  40229b:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  4022a2:	00 
  4022a3:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  4022aa:	00 00 
  4022ac:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  4022b2:	48 8b 48 18          	mov    0x18(%rax),%rcx
  4022b6:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4022ba:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
  4022bf:	48 8b 39             	mov    (%rcx),%rdi
  4022c2:	e8 99 e9 ff ff       	callq  400c60 <bcopy@plt>
  4022c7:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  4022ce:	ba 10 00 00 00       	mov    $0x10,%edx
  4022d3:	48 89 e6             	mov    %rsp,%rsi
  4022d6:	89 df                	mov    %ebx,%edi
  4022d8:	e8 d3 e9 ff ff       	callq  400cb0 <connect@plt>
  4022dd:	85 c0                	test   %eax,%eax
  4022df:	79 50                	jns    402331 <init_driver+0x1ac>
  4022e1:	48 b8 45 72 72 6f 72 	mov    $0x55203a726f727245,%rax
  4022e8:	3a 20 55 
  4022eb:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4022ef:	48 b8 6e 61 62 6c 65 	mov    $0x6f7420656c62616e,%rax
  4022f6:	20 74 6f 
  4022f9:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4022fd:	48 b8 20 63 6f 6e 6e 	mov    $0x7463656e6e6f6320,%rax
  402304:	65 63 74 
  402307:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40230b:	48 b8 20 74 6f 20 73 	mov    $0x76726573206f7420,%rax
  402312:	65 72 76 
  402315:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402319:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  40231f:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402323:	89 df                	mov    %ebx,%edi
  402325:	e8 76 e8 ff ff       	callq  400ba0 <close@plt>
  40232a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40232f:	eb 16                	jmp    402347 <init_driver+0x1c2>
  402331:	89 df                	mov    %ebx,%edi
  402333:	e8 68 e8 ff ff       	callq  400ba0 <close@plt>
  402338:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  40233e:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402342:	b8 00 00 00 00       	mov    $0x0,%eax
  402347:	48 83 c4 18          	add    $0x18,%rsp
  40234b:	5b                   	pop    %rbx
  40234c:	5d                   	pop    %rbp
  40234d:	c3                   	retq   

000000000040234e <driver_post>:
  40234e:	53                   	push   %rbx
  40234f:	48 83 ec 10          	sub    $0x10,%rsp
  402353:	4c 89 cb             	mov    %r9,%rbx
  402356:	45 85 c0             	test   %r8d,%r8d
  402359:	74 22                	je     40237d <driver_post+0x2f>
  40235b:	48 89 ce             	mov    %rcx,%rsi
  40235e:	bf 74 2b 40 00       	mov    $0x402b74,%edi
  402363:	b8 00 00 00 00       	mov    $0x0,%eax
  402368:	e8 13 e8 ff ff       	callq  400b80 <printf@plt>
  40236d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402372:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402376:	b8 00 00 00 00       	mov    $0x0,%eax
  40237b:	eb 39                	jmp    4023b6 <driver_post+0x68>
  40237d:	48 85 ff             	test   %rdi,%rdi
  402380:	74 26                	je     4023a8 <driver_post+0x5a>
  402382:	80 3f 00             	cmpb   $0x0,(%rdi)
  402385:	74 21                	je     4023a8 <driver_post+0x5a>
  402387:	4c 89 0c 24          	mov    %r9,(%rsp)
  40238b:	49 89 c9             	mov    %rcx,%r9
  40238e:	49 89 d0             	mov    %rdx,%r8
  402391:	48 89 f9             	mov    %rdi,%rcx
  402394:	48 89 f2             	mov    %rsi,%rdx
  402397:	be 50 00 00 00       	mov    $0x50,%esi
  40239c:	bf 5d 2b 40 00       	mov    $0x402b5d,%edi
  4023a1:	e8 81 f6 ff ff       	callq  401a27 <submitr>
  4023a6:	eb 0e                	jmp    4023b6 <driver_post+0x68>
  4023a8:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4023ad:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4023b1:	b8 00 00 00 00       	mov    $0x0,%eax
  4023b6:	48 83 c4 10          	add    $0x10,%rsp
  4023ba:	5b                   	pop    %rbx
  4023bb:	c3                   	retq   
  4023bc:	0f 1f 40 00          	nopl   0x0(%rax)

00000000004023c0 <__libc_csu_init>:
  4023c0:	41 57                	push   %r15
  4023c2:	41 89 ff             	mov    %edi,%r15d
  4023c5:	41 56                	push   %r14
  4023c7:	49 89 f6             	mov    %rsi,%r14
  4023ca:	41 55                	push   %r13
  4023cc:	49 89 d5             	mov    %rdx,%r13
  4023cf:	41 54                	push   %r12
  4023d1:	4c 8d 25 28 1a 20 00 	lea    0x201a28(%rip),%r12        # 603e00 <__frame_dummy_init_array_entry>
  4023d8:	55                   	push   %rbp
  4023d9:	48 8d 2d 28 1a 20 00 	lea    0x201a28(%rip),%rbp        # 603e08 <__init_array_end>
  4023e0:	53                   	push   %rbx
  4023e1:	4c 29 e5             	sub    %r12,%rbp
  4023e4:	31 db                	xor    %ebx,%ebx
  4023e6:	48 c1 fd 03          	sar    $0x3,%rbp
  4023ea:	48 83 ec 08          	sub    $0x8,%rsp
  4023ee:	e8 fd e6 ff ff       	callq  400af0 <_init>
  4023f3:	48 85 ed             	test   %rbp,%rbp
  4023f6:	74 1e                	je     402416 <__libc_csu_init+0x56>
  4023f8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  4023ff:	00 
  402400:	4c 89 ea             	mov    %r13,%rdx
  402403:	4c 89 f6             	mov    %r14,%rsi
  402406:	44 89 ff             	mov    %r15d,%edi
  402409:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40240d:	48 83 c3 01          	add    $0x1,%rbx
  402411:	48 39 eb             	cmp    %rbp,%rbx
  402414:	75 ea                	jne    402400 <__libc_csu_init+0x40>
  402416:	48 83 c4 08          	add    $0x8,%rsp
  40241a:	5b                   	pop    %rbx
  40241b:	5d                   	pop    %rbp
  40241c:	41 5c                	pop    %r12
  40241e:	41 5d                	pop    %r13
  402420:	41 5e                	pop    %r14
  402422:	41 5f                	pop    %r15
  402424:	c3                   	retq   
  402425:	66 66 2e 0f 1f 84 00 	data32 nopw %cs:0x0(%rax,%rax,1)
  40242c:	00 00 00 00 

0000000000402430 <__libc_csu_fini>:
  402430:	f3 c3                	repz retq 
  402432:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000402434 <_fini>:
  402434:	48 83 ec 08          	sub    $0x8,%rsp
  402438:	48 83 c4 08          	add    $0x8,%rsp
  40243c:	c3                   	retq   
