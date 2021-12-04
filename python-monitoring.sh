#!/bin/bash

sudo docker exec -it DockerPython python3 /root/dev/util/get_mac_addr.py

sudo docker exec -it DockerSQL mysql -u root -purubu100 safelog -e "UPDATE maquina SET id_maquina = '$?' WHERE pk_maquina = (SELECT pk_maquina FROM maquina WHERE id_maquina LIKE '02:42%');'"

sudo docker exec -it DockerPython python3 /root/dev/api/insert-db-aut.py