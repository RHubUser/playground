FROM nginx
COPY html /usr/share/nginx/html
RUN ls -ln /
RUN chmod 775 /
