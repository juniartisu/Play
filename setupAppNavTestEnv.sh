#!/bin/bash


echo "HELLO JUNI"
echo $DOCKER_USER
echo $DOCKER_PWD
echo $PLATFORM_URL
echo $PLATFORM_USERNAME
echo $PLATFORM_PASSWORD
echo $JUNI_VAR

echo $TRAVIS
echo $TRAVIS_PULL_REQUEST
echo $TRAVIS_BRANCH

if [ "$TRAVIS" == "true" ] && [ "$TRAVIS_TAG"  == "" ]; then
     echo "OLLA"
fi

echo "GOODBYE JUNI"
