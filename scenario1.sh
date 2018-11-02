#!/usr/bin/env bash
echo "attacking victim node604";
bash attack-prep.sh > attack-prep.txt 2>&1;
bash attack-start.sh > attack-start.txt 2>&1;
