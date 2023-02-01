#!/bin/bash

#COLORS
RED="\033[0;31m"
GREEN="\033[0;32m"
WHITE="\033[1;37m"
NC="\033[0m"
#END COLORS

CONTAINERS="${HOME}/goinfre/Containers"
CONTAINERS_DOCKER="${CONTAINERS}/com.docker.docker"
CONTAINERS_DOCKER_DATA="${CONTAINERS_DOCKER}/Data"
LIBRARY_CONTAINERS_DOCKER="${HOME}/Library/Containers/com.docker.docker"
#START cache dir for Docker
echo -e "${WHITE}--------------------------------------------------${NC}"
if [[ ! -d ${CONTAINERS} ]]; then
    mkdir ${CONTAINERS}
    echo -e "${GREEN}Goinfre docker cache crerated!!!${NC}"
else
    echo -e "${GREEN}Goinfre docker cache already exist!!!${NC}"
fi

echo -e "${WHITE}--------------------------------------------------${NC}"
if [[ ! -d ${CONTAINERS_DOCKER} ]]; then
    mkdir ${CONTAINERS_DOCKER}
    rm -rf "${LIBRARY_CONTAINERS_DOCKER}"
    ln -s "${CONTAINERS_DOCKER}" "${LIBRARY_CONTAINERS_DOCKER}"
    echo -e "${GREEN}Goinfre docker containers cache crerated!!!${NC}"
else
    echo -e "${GREEN}Goinfre docker containers cache already exist!!!${NC}"
fi
if [[ ! -d ${CONTAINERS_DOCKER_DATA} ]]; then
        mkdir ${CONTAINERS_DOCKER_DATA}
fi
#END cache dir for Docker
