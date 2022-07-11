FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install docker
RUN apt-get install nginx
#RUN apt-get install trivy
#CMD ls /var/www/html
