# boot2docker
boot2docker info

# List Docker Images
docker images

docker build -t devcon-example .

# Deprecated but useful tree listing
docker images -tree
docker history devcon-example

# Example container
docker run -it --rm devcon-example /bin/bash
docker run -it --rm -p 8000:8000 devcon-example

# Start 2 instances of demo container. Using names for easier reference
docker run -d -p 8000:8000 --name devcon1 devcon-example
docker run -d -p 8001:8000 -e "FROM=devcon2" --name devcon2 devcon-example

docker ps

# Start load balancer
docker run -d -p 8080:8080 -v `pwd`/nginx.conf:/etc/nginx/conf.d/default.conf nginx

# Enter a container for debugging
docker exec -it devcon1 /bin/bash

# http://192.168.59.103:8000/
# http://192.168.59.103:8001/
# http://192.168.59.103:8080/
