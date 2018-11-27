#!/usr/bin/env bash
echo "attacking victim node504 only from 60 subnet";
bash attack-prep-sub60-attacks-sub50.sh > attack-prep-sub60-attacks-sub50.txt 2>&1;
bash attack-start-sub60-attacks-sub50.sh > attack-start-sub60-attacks-sub50.txt 2>&1;
