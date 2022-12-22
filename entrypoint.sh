#!/bin/bash

echo "* * * * * * * * * * * * * * * * * * * * *"
echo "*                                       *"
echo "*   Welcome to ArvanCloud PaaS Action   *"
echo "*                                       *"
echo "* * * * * * * * * * * * * * * * * * * * *"
echo ""

ERRORS=0

if [ $# -eq 0 ]
  then
    echo " -----> Error: No arguments supplied"
    exit
fi

if [ -z "$1" ]
  then
    echo " -----> Error: Please set CLI version"
    (( ERRORS ++ ))
fi

if [ -z "$2" ]
  then
    echo " -----> Error: Please set your API token"
    (( ERRORS ++ ))
fi

if [ -z "$3" ]
  then
    echo " -----> Error: Please set your application name"
    (( ERRORS ++ ))
fi

if [ -z "$4" ]
  then
    echo " -----> Error: Please set your container name"
    (( ERRORS ++ ))
fi

if [ -z "$5" ]
  then
    echo " -----> Error: Please set your image like this = image:tag"
    (( ERRORS ++ ))
fi

if [ "$6" != "default" ]
  then
    NS="-n $6"
  else
    NS=""
fi

if [ $ERRORS -ne 0 ]
  then
    exit
fi

echo " -----> Get data"

CLI_VERSION="$1"
AUTH="$2"
APP="$3"
CONTAINER="$4"
IMAGE="$5"

echo " -----> Create directory"

mkdir -p /service

echo " -----> Download ArvanCloud CLI tool version: $CLI_VERSION"

wget -q https://github.com/arvancloud/cli/releases/download/v${CLI_VERSION}/arvan_${CLI_VERSION}_linux_amd64.tar.gz -O - | tar -xz -C /service/

echo " -----> Login"

/service/arvan login <<< """$AUTH"""

echo " -----> Deploy"

/service/arvan paas ${NS} set image deployment ${APP} ${CONTAINER}=${IMAGE}