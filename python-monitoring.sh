#!/bin/bash

echo $(sudo docker exec -it DockerPython python3 /root/dev/util/get_mac_addr.py)

sudo docker exec -it DockerSQL mysql -u root -purubu100 safelog

sudo docker exec -it DockerPython python3 /root/dev/api/insert-db-aut.py