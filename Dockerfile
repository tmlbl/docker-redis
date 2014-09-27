FROM        ubuntu:latest
RUN         mkdir -p /etc/redis
ADD         . /etc/redis
ENV         DEBIAN_FRONTEND noninteractive
RUN         apt-get update && apt-get install -o Dpkg::Options::="--force-confold" --force-yes -y redis-server
EXPOSE      6379
ENTRYPOINT  "/usr/bin/redis-server"
