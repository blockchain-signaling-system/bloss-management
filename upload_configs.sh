#!/bin/bash

CONTROLLERS="controller400
controller500
controller600"

SSH_KEY="$(pwd)/savf"

AS400_LOCAL_CONFIG_INI="$(pwd)/config/as400/config.ini"
AS500_LOCAL_CONFIG_INI="$(pwd)/config/as500/config.ini"
AS600_LOCAL_CONFIG_INI="$(pwd)/config/as600/config.ini"
TARGET_DIR="~/"

echo ${AS400_LOCAL_CONFIG_INI};
echo ${AS400_TARGET_CONFIG_INI};
echo ${SSH_KEY};

ssh -i $SSH_KEY savf@controller400 "rm config.ini";
scp -i $SSH_KEY $AS400_LOCAL_CONFIG_INI savf@controller400:$TARGET_DIR;
ssh -i $SSH_KEY savf@controller400 "sudo cp config.ini /opt/bloss/config.ini";
echo "copied as400/config.ini to controller400"

ssh -i $SSH_KEY savf@controller500 "rm config.ini";
scp -i $SSH_KEY $AS500_LOCAL_CONFIG_INI savf@controller500:$TARGET_DIR;
ssh -i $SSH_KEY savf@controller500 "sudo cp config.ini /opt/bloss/config.ini";
echo "copied as400/config.ini to controller500"

ssh -i $SSH_KEY savf@controller600 "rm config.ini";
scp -i $SSH_KEY $AS600_LOCAL_CONFIG_INI savf@controller600:$TARGET_DIR;
ssh -i $SSH_KEY savf@controller600 "sudo cp config.ini /opt/bloss/config.ini";
echo "copied as400/config.ini to controller600"