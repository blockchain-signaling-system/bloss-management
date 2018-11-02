#!/bin/bash

echo 'Starting geth and waiting 5 seconds' 
ansible controllers -a "sudo systemctl start geth"
sleep 5 
echo 'Starting bloss'
ansible controllers -a "sudo systemctl start bloss"


