FROM ubutu:22.04
RUN apt-get update -v
RUN apt-get install nginx
RUN apt-get install trivy
