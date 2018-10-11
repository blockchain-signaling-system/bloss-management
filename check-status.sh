
#!/usr/bin/env bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
NORMAL=$(tput sgr0)
CYAN=$(tput setaf 6)

# List of controllers"
CONTROLLERS="controller400
controller500
controller600"

SERVICES="ipfs
geth
bloss"

ACTIVE="active"
INACTIVE="inactive"

GRAFANA="influxdb
grafana-server"

DATABASE="node601"

NODES="node401
node402
node403
node404
node501
node502
node503
node504
node601
node602
node603
node604"

SSH_KEY="savf"

# Check GRAFANA services on DATABASE
	printf "${CYAN} → $DATABASE \n${NORMAL}"
	for service in $GRAFANA; do
  		ACTIVE_STATE=$(ssh -i $SSH_KEY savf@$DATABASE "systemctl show -p ActiveState $service | cut -d'=' -f2")
  		SUB_STATE=$(ssh -i $SSH_KEY savf@$DATABASE "systemctl show -p SubState $service | cut -d'=' -f2")
  		if [ $ACTIVE_STATE = $ACTIVE ]; then
  			printf "${GREEN} \t ✔ $service [$ACTIVE_STATE][$SUB_STATE] \n${NORMAL}"
  		elif [ $ACTIVE_STATE = $INACTIVE ]; then
  			printf "${RED} \t × $service [$ACTIVE_STATE][$SUB_STATE] \n${NORMAL}"
  		fi
	done

# Check all SERVICES on controllers and print their ActiveState and SubState
for entry in $CONTROLLERS; do
	printf "${CYAN} → $entry \n${NORMAL}"
	for service in $SERVICES; do
  		ACTIVE_STATE=$(ssh -i $SSH_KEY savf@$entry "systemctl show -p ActiveState $service | cut -d'=' -f2")
  		SUB_STATE=$(ssh -i $SSH_KEY savf@$entry "systemctl show -p SubState $service | cut -d'=' -f2")
  		if [ $ACTIVE_STATE = $ACTIVE ]; then
  			printf "${GREEN} \t ✔ $service [$ACTIVE_STATE][$SUB_STATE] \n${NORMAL}"
  		elif [ $ACTIVE_STATE = $INACTIVE ]; then
  			printf "${RED} \t × $service [$ACTIVE_STATE][$SUB_STATE] \n${NORMAL}"
  		fi
	done
done
