#!/bin/bash

echo "JUNI start"
echo $TRAVIS_TAG
echo "JUNI END"

gitTag=`git tag`
echo "Git Tag: $gitTag"

echo "Travis tag is $TRAVIS_TAG"

if [ "$TRAVIS" == "true" ] && [ "$TRAVIS_TAG"  == "" ]; then
     echo "HAS TAG"
else
     echo "DOES NOT HAVE TAG"
fi
