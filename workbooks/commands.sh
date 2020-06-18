# использование management command
# docker <command> <sub command>
docker container run


# important commands

docker version
docker info

# create and run a new container
docker container run --publish 80:80 --detach --name main_nginx nginx
# show logs for container
docker container logs main_nginx
docker container run -p 3306:3306 -d -n new_mysql -e MYSQL_RANDOM_PASSWORD=yes mysql

docker container top
docker container inspect

# run container that already exists
docker container start

# go into a shell inside a running container
docker container exec

# show all ports that are exposed by container_name
docker container port container_name

# get ip
docker container inspect --format '{{.NetworkSettings.IPAddress}}' container_name

# network commands
docker network

# tag image
docker image tag

# push image
docker image push

# build image using Dockerfile
docker image build

# use named volume for a container
docker container run -v volue_name:valume_path the_rest_params

# bind mounts
docker container run -v host_full_path:container_full_path the_rest_params

# create and run all containers (not rebuild images if they exist in cache)
docker-compose up

# stop and remove all containers
docker-compose down

# build images every time
docker-compose build
docker-compose up --build

########################
# Swarm
########################

# activate swarm mode
docker swarm init

# managing swarm nodes
docker node

# managing swarm services (like docker run)
docker service

# change number of nodes for a given service
docker sevice update --replicas

# update service using given image
docker docker sevice update --image image_name service_name

# change role (manager / worker)
docker node update --role

# deploy stack using docker-compose file
# has deploy key, but can't use build
docker stack deploy -c compose_file_path

# create secret
docker secret create secret_name path_to_secret_content