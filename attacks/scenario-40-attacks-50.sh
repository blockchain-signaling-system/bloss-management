#!/usr/bin/env bash
echo "attacking victim node504 only from 50 subnet";
bash attack-prep-sub40-attacks-sub50.sh > attack-prep-sub40-attacks-sub50.txt 2>&1;
bash attack-start-sub40-attacks-sub50.sh > attack-start-sub40-attacks-sub50.txt 2>&1;
