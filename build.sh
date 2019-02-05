#!/bin/sh

echo "构建"

# cd server
# cd maven
# ./install.sh

cd server/project
mvn clean package

cd distribution/target/docker-bin/

cd boss
docker build -t="openmajiang-boss:latest" .
cd ../
#
cd gateway
docker build -t="openmajiang-gateway:latest" .
cd ../
#
cd scene
docker build -t="openmajiang-scene:latest" .
cd ../

cd client
docker build -t="openmajiang-client:latest" .
cd ../

