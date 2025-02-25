FROM nginx
COPY html /usr/share/nginx/html

RUN apt-get update && apt-get install -y sudo
