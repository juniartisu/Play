#!/bin/bash
platformURL=$1
platformUsername=$2
platformPassword=$3
platform=$4
namespace=$5

echo "########## Login started on $(date)  ##########"
echo "oc login -u $platformUsername -p $platformPassword $platformURL"
oc login -u $platformUsername -p $platformPassword $platformURL --insecure-skip-tls-verify  
if [ $? -eq 0 ]; then
     echo "########## OC login successful ##########"
else
     echo "########## OC login failed, exiting ##########"
     exit 1
fi
echo "########## Login completed on $(date)  ##########"
