# image de base
# Update de l'image
RUN apt update
RUN apt upgrade -y
# Installation de Mocha
RUN apt install mocha -y
# Copy de l'application du client sur l'image
COPY ./Application /usr/share/nginx/html/
# Exposition du port
EXPOSE 80
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
