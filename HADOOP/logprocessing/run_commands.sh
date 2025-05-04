#!/usr/bin/bash

# create project folder

mkdir logprocessing

# go to logprocessing

cd logprocessing

# create mapper.py reducer.py

touch mapper.py reducer.py

# write code

# make them executable

chmod +x mapper.py reducer.py

# create input folder

mkdir log_input

# go to log input and add file:
cd log_input
touch sample_log.txt
cd ..
# add log statements to the file

# execute:

hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.3.6.jar \
	-input log_input \
	-output log_output \
	-mapper ./mapper.py \
	-reducer ./reducer.py

# cat

hdfs dfs -cat log_output/part-00000
