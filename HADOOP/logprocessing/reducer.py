#!/usr/bin/env python3
import sys

current_ip = None
count = 0

for line in sys.stdin:
    ip, val = line.strip().split('\t')
    val = int(val)
    if ip == current_ip:
        count += val
    else:
        if current_ip:
            print(f"{current_ip}\t{count}")
        current_ip = ip
        count = val

# Last key
if current_ip:
    print(f"{current_ip}\t{count}")

