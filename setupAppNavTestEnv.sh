#!/bin/bash

echo "JUNI start"
echo $TRAVIS_TAG
echo "JUNI END"

platformURL=$1
platformUserName=$2
platformPassword=$3

if [ "$TRAVIS" == "true" ] && [ "$TRAVIS_TAG"  == "" ]; then
     echo "HAS TAG"
     oc login -u $platformUsername -p $platformPassword $platformURL --insecure-skip-tls-verify
     if [ $? -eq 0 ]; then
          echo "########## OC login successful ##########"
     else
          echo "########## OC login failed, exiting ##########"
          exit 1
     fi
fi

echo "GOODBYE JUNI"
