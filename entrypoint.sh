#!/bin/bash

CLI_VERSION="$1"
AUTH="$2"
APP="$3"
CONTAINER="$4"
IMAGE="$5"

echo "*****************************************"
echo "*                                       *"
echo "*   Welcome to ArvanCloud PaaS Action   *"
echo "*                                       *"
echo "*****************************************"

mkdir -p /service

echo " -----> Download ArvanCloud CLI tool version: $CLI_VERSION"

wget -q https://github.com/arvancloud/cli/releases/download/v${CLI_VERSION}/arvan_${CLI_VERSION}_linux_amd64.tar.gz -O - | tar -xz -C /service/

echo " -----> Login ..."

/service/arvan login <<< """$AUTH"""

echo " -----> Deploy ..."

arvan paas set image deployment ${APP} ${CONTAINER}=${IMAGE}