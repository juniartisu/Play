#!/bin/bash
gitTag=`git tag`
echo "Git Tag: $gitTag"

if [ "$TRAVIS" == "true" ] && [ "$gitTag"  != "" ]; then
     echo "Branch has tag, so running tests now"
     ./setupAppNavTestEnv.sh $OCP_URL $OCP_USER $OCP_PWD OCP $DOCKER_USER
fi