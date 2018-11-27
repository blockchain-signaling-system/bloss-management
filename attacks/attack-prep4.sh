#!/usr/bin/env bash
echo "attacking victim node604"
pssh -i -h ~/.pssh_attackers4 "ping -c 10 192.168.60.5"