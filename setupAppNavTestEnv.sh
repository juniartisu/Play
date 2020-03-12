#!/bin/bash

echo "JUNI start"
echo $TRAVIS_TAG
echo "JUNI END"

gitTag=`git tag`
echo "Git Tag: $gitTag"

test=`git tag -ln --format '%(subject)' $TRAVIS_TAG`
echo $test

if [ "$TRAVIS" == "true" ] && [ "$TRAVIS_TAG"  == "" ]; then
     echo "HAS TAG"
else
     echo "DOES NOT HAVE TAG"
fi

echo "GOODBYE JUNI"
