#!/bin/bash
gitTag=`git tag`
echo "Git Tag: $gitTag"

if [ "$TRAVIS" == "true" ] && [ "$gitTag"  != "" ]; then
     echo "Branch has tag, so running tests now"
fi