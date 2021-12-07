#!/bin/bash

sudo systemctl stop mysql

sudo docker start DockerPython DockerNode DockerSQL

cd dev/1CCO-2021-2-Grupo-06

git pull

sudo docker exec -d DockerNode rm -r website/

sudo docker exec -d DockerNode rm start-web-server.sh

sudo docker exec -d DockerPython rm -r /root/dev/api

sudo docker exec -d DockerPython rm -r /root/dev/util

sudo docker exec -d DockerSQL rm -r /root/dev/database

sudo docker cp website/ DockerNode:/

sudo docker cp website/.env DockerNode:/

sudo docker cp Apps/Python/api/ DockerPython:/root/dev/

sudo docker cp Apps/Python/util/ DockerPython:/root/dev/

sudo docker cp database/ DockerSQL:/root/dev/

cd

sudo docker cp start-web-server.sh DockerNode:/