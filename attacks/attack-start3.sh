#!/usr/bin/env bash
echo "attacking victim node604 from .40 subnet"
pssh -i -h ~/.pssh_attackers3 "iperf -c 192.168.60.5 -u -b 20m -t 240 -i 1 -p 5000"