#!/usr/bin/env python3

import sys
from collections import defaultdict

ip_count = defaultdict(int)

for line in sys.stdin:
    ip, count = line.strip().split('\t')
    ip_count[ip] += int(count)

for ip, count in ip_count.items():
    print(f"{ip}\t{count}")
