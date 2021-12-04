#!/bin/bash

sudo docker exec -it DockerSQL mysql -u root -purubu100 safelog < /root/dev/database/BDSafelog.sql

sudo docker exec -it DockerSQL mysql -u root -purubu100 safelog < /root/dev/database/pivot.sql