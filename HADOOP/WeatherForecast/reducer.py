#!/usr/bin/env python3
import sys

total_temp = 0
total_dew = 0
total_wind = 0
count = 0

for line in sys.stdin:
    key, values = line.strip().split('\t')
    temp, dew, wind, c = map(float, values.split(','))
    total_temp += temp
    total_dew += dew
    total_wind += wind
    count += int(c)

if count > 0:
    avg_temp = total_temp / count
    avg_dew = total_dew / count
    avg_wind = total_wind / count
    print(f"Average Temperature: {avg_temp:.2f}")
    print(f"Average Dew Point: {avg_dew:.2f}")
    print(f"Average Wind Speed: {avg_wind:.2f}")
else:
    print("No valid data found.")

