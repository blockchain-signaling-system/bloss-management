#!/bin/bash

echo 'Stopping all services' on $1
ansible $1 -a "sudo systemctl stop bloss"
ansible $1 -a "sudo systemctl stop geth"

