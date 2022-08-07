#!/bin/sh -l

CLI_VERSION="$1"
AUTH="$2"
APP="$3"
CONTAINER="$4"
IMAGE="$5"

echo "Hello"

mkdir -p /service

wget https://github.com/arvancloud/cli/releases/download/v${CLI_VERSION}/arvan_${CLI_VERSION}_linux_amd64.tar.gz -O - | sudo tar -xz -C /service/

time=$(ls /service | grep arvan)

echo "::set-output name=time::$time"