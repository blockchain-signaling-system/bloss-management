#!/usr/bin/env bash
echo "attacking victim node504 from subnet 60"
pssh -i -h ~/.pssh_subnet60 "ping -c 10 192.168.50.5"