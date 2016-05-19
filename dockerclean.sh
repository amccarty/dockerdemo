#!/bin/bash
echo "Stopping containers..."
docker stop $(docker ps -a -q)

echo "Deleting containers..."
docker rm $(docker ps -a -q)

echo "Deleting images..."
docker rmi $(docker images -q)
