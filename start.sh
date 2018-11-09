#!/usr/bin/env bash
echo "Starting C500_bloss-node"
(cd $(pwd)/c500_bloss-node/ && env CONTROLLER=CONTROLLER500 nodemon >> $(pwd)/output.log&);
echo "Starting C600_bloss-node"
(cd $(pwd)/c600_bloss-node/ && env CONTROLLER=CONTROLLER600 nodemon >> $(pwd)/output.log&);

echo "Starting C500_bloss-dashboard"
(cd $(pwd)/c500_bloss-dashboard/ && VUE_APP_HTTP_PORT=8050 VUE_APP_CONTROLLER=CONTROLLER500 npm run serve >> $(pwd)/output.log2>&1 &);
echo "Starting C600_bloss-dashboard"
(cd $(pwd)/c600_bloss-dashboard/ && VUE_APP_HTTP_PORT=8060 VUE_APP_CONTROLLER=CONTROLLER600 npm run serve >> $(pwd)/output.log2>&1 &);