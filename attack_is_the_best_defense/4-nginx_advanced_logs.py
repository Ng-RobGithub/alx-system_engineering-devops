#!/usr/bin/env python3
import re
import sys

if len(sys.argv) < 2:
    print("Usage: {} <logfile>".format(sys.argv[0]))
    sys.exit(1)

logfile = sys.argv[1]

with open(logfile, 'r') as f:
    for line in f:
        match = re.search(r'\[(\d{2}/\w{3}/\d{4}:\d{2}:\d{2}:\d{2})\].*"\w+ /(.*?) HTTP', line)
        if match:
            print(match.group(1), match.group(2))
