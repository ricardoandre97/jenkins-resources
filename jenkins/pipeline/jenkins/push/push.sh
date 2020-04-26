#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u ricardoandre97 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG ricardoandre97/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push ricardoandre97/$IMAGE:$BUILD_TAG
