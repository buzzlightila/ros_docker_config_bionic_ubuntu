#!/bin/bash
echo "Starting docker ros..."
docker start ros
echo "Geting xauth code.."
xauth_code=$(xauth list | head -1 |sed -e "s/\unix:/unix:0/g")
echo $xauth_code
echo "exec ros..."
docker exec -ti ros sh -c "xauth add ${xauth_code}"
docker exec -ti ros sh -c "xauth add ${xauth_code}"
exit 0
