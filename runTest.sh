#!/bin/bash
gitTag=`git tag`
echo "Git Tag: $gitTag"

if [ "$TRAVIS" == "true" ]; then
     echo "Travis is true"
else 
     echo "Travis is false"
fi