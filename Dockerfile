# image de base
FROM nginx
# Update 
RUN apt-get update -yq
# Installation de docker
RUN curl -fsSL https://get.docker.com -o get-docker.sh
RUN sh get-docker.sh
# Copy de l'application du client sur l'image
COPY ./Application /usr/share/nginx/html/
# Exposition du port
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
