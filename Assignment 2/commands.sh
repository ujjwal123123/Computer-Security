#!/bin/bash

# set up Docker
sudo pacman -Syu docker # assuming Arch based distro
sudo systemctl enable docker
sudo systemctl start docker

# install Snort-3 image
sudo docker pull ciscotalos/snort3

# start the container
sudo docker run --name snort3 -h snort3 -u snorty -w /home/snorty -d -it ciscotalos/snort3 bash

# enter the container
sudo docker exec -it snort3 bash
# or
sudo docker start -i snort3

# stop the container
docker kill snort3
