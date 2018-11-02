#!/bin/bash

echo 'Stopping all services' 
ansible controllers -a "sudo systemctl stop bloss"
ansible controllers -a "sudo systemctl stop geth"

