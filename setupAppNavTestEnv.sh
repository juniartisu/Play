#!/bin/bash

echo "JUNI start"
echo $TRAVIS_TAG
echo "JUNI END"

gitTag=`git tag`
echo "Git Tag: $gitTag"

if [ "$TRAVIS" == "true" ] && [ "$TRAVIS_TAG"  == "" ]; then
     echo "HAS TAG"
fi

echo "GOODBYE JUNI"
