import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.StringReader;
import java.net.URI;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.StringTokenizer;

import org.apache.commons.lang3.StringEscapeUtils;
import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.io.IntWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.util.GenericOptionsParser;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.*;

/**
 * parse XML from enwiki and generate counts of n-gram
 */
public class NgramCount {
    public static class NgramMapper
            extends Mapper<Object, Text, Text, IntWritable>{

        private final static IntWritable one = new IntWritable(1);
        private Text word = new Text();

        private Configuration conf;
        private BufferedReader fis;

        DocumentBuilder dBuilder;

        @Override
        public void setup(Context context) throws IOException,
                InterruptedException {
            conf = context.getConfiguration();
            try {
                dBuilder = DocumentBuilderFactory.newInstance().newDocumentBuilder();
            } catch (ParserConfigurationException e) {
                e.printStackTrace();
            }
        }


        @Override
        public void map(Object key, Text value, Context context
        ) throws IOException, InterruptedException {
            Document doc = null;
            try {
                doc = dBuilder.parse(new InputSource(new StringReader(value.toString())));

                //doc.getDocumentElement().normalize();

                String text = (doc.getElementsByTagName("text").item(0)).getTextContent();

                text = StringEscapeUtils.unescapeHtml4(text);
                text = text.toLowerCase();

                text = text.replaceAll("(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]", " ");
                text = text.replaceAll("<ref>|</ref>", " ");
                text = text.replaceAll("[^a-zA-Z' ]|(?<=^|\\W)'|'(?=\\W|$)", " ");
                text = text.trim().replaceAll(" +", " ");

                String[] tokens = text.split(" ");
                for (int i=0; i<tokens.length; i++) {
                    String tmp = "";
                    for (int j=0; j<5&&i+j<tokens.length; j++) {
                        if (!tmp.equals("")) {
                            tmp = tmp + " ";
                        }
                        tmp += tokens[i + j];
                        word.set(tmp);
                        context.write(word, one);
                    }
                }
            } catch (SAXException e) {
                e.printStackTrace();
            }
        }
    }

    public static class NgramCombiner
            extends Reducer<Text,IntWritable,Text,IntWritable> {
        private IntWritable result = new IntWritable();

        public void reduce(Text key, Iterable<IntWritable> values,
                           Context context
        ) throws IOException, InterruptedException {
            int sum = 0;
            for (IntWritable val : values) {
                sum += val.get();
            }
            result.set(sum);
            context.write(key, result);
        }
    }

    public static class NgramReducer
            extends Reducer<Text,IntWritable,Text,IntWritable> {
        private IntWritable result = new IntWritable();

        public void reduce(Text key, Iterable<IntWritable> values,
                           Context context
        ) throws IOException, InterruptedException {
            int sum = 0;
            for (IntWritable val : values) {
                sum += val.get();
            }
            if (sum <= 2) return;
            result.set(sum);
            context.write(key, result);
        }
    }

    public static void main(String[] args) throws IOException, ClassNotFoundException, InterruptedException {
        Configuration conf = new Configuration();
        GenericOptionsParser optionParser = new GenericOptionsParser(conf, args);
        String[] remainingArgs = optionParser.getRemainingArgs();
        if ((remainingArgs.length != 2)) {
            System.err.println("Usage: NgramCount <in> <out>");
            System.exit(2);
        }
        Job job = Job.getInstance(conf, "NgramCount");
        job.setJarByClass(NgramCount.class);
        job.setMapperClass(NgramMapper.class);
        job.setCombinerClass(NgramCombiner.class);
        job.setReducerClass(NgramReducer.class);
        job.setOutputKeyClass(Text.class);
        job.setOutputValueClass(IntWritable.class);

        FileInputFormat.addInputPath(job, new Path(remainingArgs[0]));
        FileOutputFormat.setOutputPath(job, new Path(remainingArgs[1]));

        System.exit(job.waitForCompletion(true) ? 0 : 1);

    }
}
