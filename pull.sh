#!/usr/bin/env bash
echo "Pulling & installing bloss-node"
(cd $(pwd)/c500_bloss-node/ && git pull);
(cd $(pwd)/c500_bloss-node/ && npm install);
(cd $(pwd)/c600_bloss-node/ && git pull);
(cd $(pwd)/c600_bloss-node/ && npm install);
echo "Pulling & installing bloss-dashboard"
(cd $(pwd)/c500_bloss-dashboard/ && git pull);
(cd $(pwd)/c500_bloss-dashboard/ && npm install);
(cd $(pwd)/c600_bloss-dashboard/ && git pull);
(cd $(pwd)/c500_bloss-dashboard/ && npm install);