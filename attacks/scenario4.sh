#!/usr/bin/env bash
echo "attacking victim node604 only form 50 subnet";
bash attack-prep4.sh > attack-prep4.txt 2>&1;
bash attack-start4.sh > attack-start4.txt 2>&1;
