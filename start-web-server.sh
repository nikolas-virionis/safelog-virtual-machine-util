#!/bin/bash

sudo docker exec -it DockerNode cd website && npm i

sudo docker exec -it DockerNode node website/bin/www production