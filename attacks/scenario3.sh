#!/usr/bin/env bash
echo "attacking victim node604 only form .40 subnet";
bash attack-prep3.sh > attack-prep3.txt 2>&1;
bash attack-start3.sh > attack-start3.txt 2>&1;
