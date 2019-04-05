############################################################
# Dockerfile to build Nginx Installed Containers
# morettimaxi.com.ar
############################################################


# Set the base image to Ubuntu
FROM nginx

# File Author / Maintainer
MAINTAINER Morettimaxi.com.ar
# Install Nginx

COPY default.conf /etc/nginx/conf.d/
COPY index.html /usr/share/nginx/html/

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["nginx", "-g", "daemon off;"]