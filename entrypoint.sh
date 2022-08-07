#!/bin/sh -l

echo "Hello $1"
time=$(ls /service | grep arvan)
echo "::set-output name=time::$time"