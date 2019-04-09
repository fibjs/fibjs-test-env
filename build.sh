#!/bin/bash

set -ev

docker build -t fibjs/fibjs-test-env:${TRAVIS_TAG} -f Dockerfile .

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker push fibjs/fibjs-test-env:${TRAVIS_TAG}

exit 0;
