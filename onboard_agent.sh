#!/usr/bin/env bash

if [ -z "$1" ]
  then
    echo "No argument supplied for the workspace id. e.g. ./onboard_agent.sh XXX XXX"
    exit 1
fi

if [ -z "$2" ]
  then
    echo "No argument supplied for the workspace key. e.g. ./onboard_agent.sh XXX XXX"
    exit 1
fi

ID=$1
KEY=$2

wget https://raw.githubusercontent.com/Microsoft/OMS-Agent-for-Linux/master/installer/scripts/onboard_agent.sh && sh onboard_agent.sh -w ${ID} -s ${KEY}