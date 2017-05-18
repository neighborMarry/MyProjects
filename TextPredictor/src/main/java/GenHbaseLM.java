import java.io.IOException;
import java.util.*;


import org.apache.hadoop.conf.Configuration;
import org.apache.hadoop.fs.Path;
import org.apache.hadoop.hbase.client.Put;
import org.apache.hadoop.hbase.io.ImmutableBytesWritable;
import org.apache.hadoop.hbase.mapreduce.TableMapReduceUtil;
import org.apache.hadoop.hbase.mapreduce.TableReducer;
import org.apache.hadoop.hbase.util.Bytes;
import org.apache.hadoop.io.DoubleWritable;
import org.apache.hadoop.io.Text;
import org.apache.hadoop.mapreduce.Job;
import org.apache.hadoop.mapreduce.Mapper;
import org.apache.hadoop.mapreduce.Reducer;
import org.apache.hadoop.mapreduce.lib.input.FileInputFormat;
import org.apache.hadoop.mapreduce.lib.output.FileOutputFormat;
import org.apache.hadoop.util.GenericOptionsParser;
import org.apache.hadoop.hbase.HBaseConfiguration;
import org.apache.log4j.Logger;

/**
 * Generate language model from n-gram counts and store to HBase
 */
public class GenHbaseLM {
    public static class Pair implements Comparable<Pair> {
        String word;
        Double value;

       Pair(String word, double value) {
           this.word = word;
           this.value = value;
       }

        public int compareTo(Pair o) {
            if (value.compareTo(o.value) == 0) return word.compareTo(o.word);
            return -value.compareTo(o.value);
        }
    }

    public static class LmMapper
            extends Mapper<Object, Text, Text, Text>{

        Text p = new Text();
        Text v = new Text();

        @Override
        public void map(Object key, Text value, Context context
        ) throws IOException, InterruptedException {
            String[] tokens = value.toString().split("\\t");
            String phrase = tokens[0];
            String count = tokens[1];

            p.set(phrase);
            v.set(count);
            context.write(p, v);

            int index = phrase.lastIndexOf(" ");
            if (index != -1) {
                String last = phrase.substring(index + 1);
                phrase = phrase.substring(0, index);

                p.set(phrase);
                v.set(last + " " + count);
                context.write(p, v);
            }
        }
    }

    public static class LmCombiner
            extends Reducer<Text,Text,Text,Text> {
        private Text result = new Text();

        public void reduce(Text key, Iterable<Text> values,
                           Context context
        ) throws IOException, InterruptedException {
            StringBuilder sb = new StringBuilder("");
            for (Text val : values) {
                String t = val.toString();
                int index = t.indexOf(" ");
                if (index != -1) {
                    if (sb.length() != 0) {
                        sb.append(" ");
                    }
                    sb.append(t);
                }
                else {
                    context.write(key, val);
                }
            }
            if (sb.length() > 0) {
                result.set(sb.toString());
                context.write(key, result);
            }
        }
    }

    public static class LmReducer
            extends TableReducer<Text,Text, ImmutableBytesWritable> {
            //extends Reducer<Text,Text, Text, Text> {
        private Configuration conf;
        private int n;

        byte[] data;


        @Override
        public void setup(Context context) {
            conf = context.getConfiguration();
            n = conf.getInt("n", 0);

            data = Bytes.toBytes("data");
        }

        public void reduce(Text key, Iterable<Text> values,
                           Context context
        ) throws IOException, InterruptedException {
            List<Pair> l = new ArrayList<Pair>();
            double base = 0;
            for (Text val : values) {
                String t = val.toString();
                int index = t.indexOf(" ");
                if (index == -1) {
                    base = Double.valueOf(t);
                }
                else {
                    String[] tokens = t.split(" ");
                    for (int i=0; i<tokens.length; i+=2) {
                        l.add(new Pair(tokens[i], Double.valueOf(tokens[i + 1])));
                    }
                }
            }

            if (l.isEmpty()) return;

            Collections.sort(l);
            Put p = new Put(key.toString().getBytes());
            for (int i=0; i<Math.min(l.size(), n); i++) {
                Double value = l.get(i).value / base;
                p.addColumn(data, Bytes.toBytes(l.get(i).word), Bytes.toBytes(value.toString()));
                //Text t = new Text(l.get(i).word + "\t" + value.toString());
                //context.write(key, t);
            }
            context.write(null, p);
        }
    }

    public static void main(String[] args) throws IOException, ClassNotFoundException, InterruptedException {
        Configuration conf = HBaseConfiguration.create();
        String zkAddr = "127.0.0.1";
        conf.set("hbase.master", zkAddr + ":16000");
        conf.set("hbase.zookeeper.quorum", zkAddr);
        conf.set("hbase.zookeeper.property.clientport", "2181");
        GenericOptionsParser optionParser = new GenericOptionsParser(conf, args);
        String[] remainingArgs = optionParser.getRemainingArgs();
        if ((remainingArgs.length < 2)) {
            System.err.println("Usage: GenHbaseLM <in> n");
            System.exit(2);
        }
        Job job = Job.getInstance(conf, "GenHbaseLM");
        job.setJarByClass(GenHbaseLM.class);
        job.setMapperClass(LmMapper.class);
        job.setCombinerClass(LmCombiner.class);
        job.setMapOutputKeyClass(Text.class);
        job.setMapOutputValueClass(Text.class);

        TableMapReduceUtil.initTableReducerJob("lmdb",
                LmReducer.class, job);

        job.getConfiguration().setInt("n", Integer.valueOf(remainingArgs[1]));

        FileInputFormat.addInputPath(job, new Path(remainingArgs[0]));

        System.exit(job.waitForCompletion(true) ? 0 : 1);
    }
}
