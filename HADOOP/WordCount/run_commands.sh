#!/usr/bin/bash

# create project folder
mkdir WordCount

# go to WordCount
cd WordCount

# create mapper.py reducer.py
touch mapper.py reducer.py

# write code

# make them executable
chmod +x mapper.py reducer.py

# create input folder
mkdir wc_input

# go to wc_input and add file
cd wc_input
touch sample_text.txt
cd ..
# add sample text lines to the file

# execute:
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.3.6.jar \
	-input wc_input \
	-output wc_output \
	-mapper ./mapper.py \
	-reducer ./reducer.py

# display result
hdfs dfs -cat wc_output/part-00000
