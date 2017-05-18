import org.apache.spark.sql.SparkSession

object PageRank {

    def main(args: Array[String]) {

        val spark = SparkSession.builder.appName("PageRank").getOrCreate()
            val sc = spark.sparkContext

            val lines = spark.read.textFile("hdfs:///user/hadoop/input/Graph").rdd

            // load all the nodes
            val nodes = lines.flatMap{line=>line.split("\t")}.distinct()
            val N = nodes.count()

            // compute all nodes without out edge
            val nofollow = nodes.subtract(lines.map{line=> val parts=line.split("\t"); parts(0)}.distinct()).map((_, 1))

            // generate all links
            val links = lines.map{ s => val parts = s.split("\t"); (parts(0), parts(1)) }.groupByKey().cache()

            // initialize ranks
            var ranks = nodes.map(v => (v, 1.0 / N))

            // main iteration for pagerank
            for (i <- 1 to 10) {
                // calculate the contribs of every node to its output node
                val contribs = links.join(ranks).flatMap{ case (uid, (urls, rank)) => val size = urls.size; urls.map(url => (url, rank / size)) }

                // the contribs of nodes without out edge
                val epsilon = nofollow.join(ranks).map(v=>v._2._2).sum() / N * 0.85

                // generate ranks of this iteration by reduce all contribs
                ranks = contribs.reduceByKey(_ + _).mapValues(0.15 / N + 0.85 * _ + epsilon)
            }


        // output format: node\tpagerank
        ranks.map(x=>x._1 + "\t" + x._2).saveAsTextFile("hdfs:///pagerank-output")
        spark.stop()
    }
}
