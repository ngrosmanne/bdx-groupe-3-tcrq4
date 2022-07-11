FROM ubuntu:22.04
RUN apt-get update -y

RUN apt-get install docker -y
CMD echo "-----------docker version---------------"
CMD docker version 
CMD "---------------------------------"

RUN apt-get install nginx -y
#RUN apt-get install trivy
CMD ls /var/www/html
