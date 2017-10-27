# docker
wget -qO- get.docker.com | sh

# docker-compose
# detail: https://github.com/docker/compose/releases
curl -L https://github.com/docker/compose/releases/download/1.16.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose