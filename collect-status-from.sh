#!/bin/bash

echo 'Getting status of services' on $1
ansible $1 -a "sudo systemctl status bloss"
ansible $1 -a "sudo systemctl status geth"
ansible $1 -a "sudo systemctl status ipfs"