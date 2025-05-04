#!/usr/bin/bash

# create project folder
mkdir WeatherForecast

# go to WeatherForecast
cd WeatherForecast

# create mapper.py reducer.py
touch mapper.py reducer.py

# write code

# make them executable
chmod +x mapper.py reducer.py

# create input folder
mkdir weather_input

# go to weather_input and add file
cd weather_input
touch sample_weather.txt
cd ..
# add weather data in structured format to sample_weather.txt

# execute:
hadoop jar $HADOOP_HOME/share/hadoop/tools/lib/hadoop-streaming-3.3.6.jar \
	-input weather_input \
	-output weather_output \
	-mapper ./mapper.py \
	-reducer ./reducer.py

# display result
hdfs dfs -cat weather_output/part-00000
