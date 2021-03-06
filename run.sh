#!/usr/bin/env bash

hadoop fs -put web-BerkStan.txt
sbt pac
spark-submit --class "SparkPageRank" --properties-file=spark.conf target/scala-2.11/parta_2.11-1.0.jar web-BerkStan.txt 10
spark-submit --class "SparkPageRankWithCustomPartitioner" --properties-file=spark.conf target/scala-2.11/parta_2.11-1.0.jar web-BerkStan.txt 10
spark-submit --class "SparkPageRankWithCustomPartitionerWithCache" --properties-file=spark.conf target/scala-2.11/parta_2.11-1.0.jar web-BerkStan.txt 10