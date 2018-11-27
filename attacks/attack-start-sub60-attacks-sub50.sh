#!/usr/bin/env bash
echo "attacking victim node504"
pssh -i -h ~/.pssh_subnet60 "iperf -c 192.168.50.5 -u -b 20m -t 240 -i 1 -p 5000"