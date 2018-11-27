#!/usr/bin/env bash
echo "attacking victim node504 from subnet 40"
pssh -i -h ~/.pssh_subnet40 "ping -c 10 192.168.50.5"