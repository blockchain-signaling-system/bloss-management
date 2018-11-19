#!/bin/bash

echo 'Stopping all services' 
ansible controllers -a "sudo systemctl stop bloss"
sleep 1;
ansible controllers -a "sudo systemctl stop geth"
sleep 1;
ansible controllers -a "sudo systemctl stop ipfs"
sleep 1;

echo 'Disabling all services' 
ansible controllers -a "sudo systemctl disable bloss"
sleep 1;
ansible controllers -a "sudo systemctl disable geth"
sleep 1;
ansible controllers -a "sudo systemctl disable ipfs"
sleep 1;
