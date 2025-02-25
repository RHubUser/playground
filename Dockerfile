FROM nginx
COPY html /usr/share/nginx/html

RUN echo 'installing docker inside docker'
FROM  openjdk:8
RUN apt-get update && apt-get install -y \
  curl \
  && rm -rf /var/lib/apt/lists/*
 
ENV DOCKER_CHANNEL stable
ENV DOCKER_VERSION 17.03.1-ce
ENV DOCKER_API_VERSION 1.27
RUN curl -fsSL "https://download.docker.com/linux/static/${DOCKER_CHANNEL}/x86_64/docker-${DOCKER_VERSION}.tgz" \
  | tar -xzC /usr/local/bin --strip=1 docker/docker
