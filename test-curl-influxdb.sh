#!/usr/bin/env bash

RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
NORMAL=$(tput sgr0)
CYAN=$(tput setaf 6)

curl http://172.10.15.20:8086/debug/pprof/ > /dev/null 2>&1

exit_status=$?
if [ $exit_status -eq 7 ]; then
    printf "${RED} × Something went wrong \n${NORMAL}"
else
	printf "${GREEN} ✔ Everything fine \n${NORMAL}"
fi

exit $exit_status