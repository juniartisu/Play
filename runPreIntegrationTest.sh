#!/bin/bash
export PLATFORM_URL=$OCP_URL
export PLATFORM_PASSWORD=$OCP_PWD
export PLATFORM_URL=$OCP_URL
export PLATFORM_USERNAME=$OCP_USER

echo "HELLO JUNI"
echo $DOCKER_USER
echo $DOCKER_PWD
echo $PLATFORM_URL
echo $PLATFORM_USERNAME
echo $PLATFORM_PASSWORD

echo $TRAVIS_BRANCH
echo $TRAVIS_TAG

gitTag=`git tag`
echo $gitTag

if [ "$TRAVIS" == "true" ] && [ "$gitTag"  == "" ]; then
     echo "Branch do not have tag"
else
     echo "Branch has tag"
     ./setupAppNavTest.sh $OCP_URL $OCP_USER $OCP_PWD $DOCKER_USER -p
fi

echo "GOODBYE JUNI"
