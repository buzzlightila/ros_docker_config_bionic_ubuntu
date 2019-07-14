# Docker configs to use ROS Kinetic Ubuntu Xenial in Ubuntu Bionic 18
## Install Docker
Install docker https://docs.docker.com/install/linux/docker-ce/ubuntu/
## Build the image and run
```
sudo docker build -t osrf/ros:kinetic-desktop-xenial .
sudo docker run --net=host --env="DISPLAY" --volume="/tmp/.X11-unix" --volume="/home:/home" --name=ros -it -d osrf/ros:kinetic-desktop-xenial
docker exec -ti <CONTAINER ID> /bin/bash
```
## For use the interface from ROS Kinetic
```
./exec_ros.sh
```
