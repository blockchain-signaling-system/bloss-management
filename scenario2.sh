#!/usr/bin/env bash
echo "attacking victim node604";
bash attack-prep2.sh > attack-prep2.txt 2>&1;
bash attack-start2.sh > attack-start2.txt 2>&1;
