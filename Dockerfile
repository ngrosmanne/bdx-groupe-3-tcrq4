# image de base
FROM nginx
# Update de l'image
#RUN apt update
#RUN apt upgrade -y
# Installation de Mocha
#RUN apt install mocha -y
# Installation de VIM / Nano
#RUN apt install nano -y
#RUN apt install vim -y
# Installation de docker
#RUN curl -fsSL https://get.docker.com -o get-docker.sh
#RUN sh get-docker.sh
# Copy de l'application du client sur l'image
COPY ./Application /usr/share/nginx/html/
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
CMD sed -i -e 's/$PORT/'"$PORT"'/g' /etc/nginx/conf.d/default.conf
# Exposition du port
#ENV LISTEN_PORT 8080
#EXPOSE 8080
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
