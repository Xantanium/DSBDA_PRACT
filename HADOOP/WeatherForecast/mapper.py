#!/usr/bin/env python3
import sys

for line in sys.stdin:
    if line.startswith("Date") or not line.strip():
        continue  # Skip headers and empty lines

    parts = line.strip().split()
    try:
        temperature = float(parts[2])
        dew_point = float(parts[3])
        wind_speed = float(parts[4])
        print(f"metrics\t{temperature},{dew_point},{wind_speed},1")
    except (IndexError, ValueError):
        continue

