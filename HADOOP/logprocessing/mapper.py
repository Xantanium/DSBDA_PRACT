#!/usr/bin/env python3
import sys
import re

# Regex to extract IP address
pattern = re.compile(r'^(\d{1,3}(?:\.\d{1,3}){3})')

for line in sys.stdin:
    match = pattern.match(line)
    if match:
        ip = match.group(1)
        print(f"{ip}\t1")

