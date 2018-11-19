#!/bin/bash

echo 'Enabling all services' 
ansible controllers -a "sudo systemctl enable ipfs"
sleep 1;
ansible controllers -a "sudo systemctl enable geth"
sleep 1;
ansible controllers -a "sudo systemctl enable bloss"
sleep 1;

echo 'Starting all services' 
ansible controllers -a "sudo systemctl start ipfs"
sleep 1;
ansible controllers -a "sudo systemctl start geth"
sleep 1;
ansible controllers -a "sudo systemctl start bloss"
sleep 1;

bash ./check-status.sh;