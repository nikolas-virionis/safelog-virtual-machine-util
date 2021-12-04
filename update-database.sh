#!/bin/bash

sudo docker exec -it DockerSQL chmod 777 /root/dev/database/BDSafelog.sql

sudo docker exec -it DockerSQL chmod 777 /root/dev/database/pivot.sql

sudo docker exec -it DockerSQL mysql -u root -purubu100 -e "source /root/dev/database/BDSafelog.sql"

sudo docker exec -it DockerSQL mysql -u root -purubu100 -e "source /root/dev/database/pivot.sql"