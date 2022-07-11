FROM nginx
#RUN apt-get update
#RUN rm -Rf /usr/share/nginx/html/*
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./Application/* /usr/share/nginx/html/
EXPOSE 80
#ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon on;"]
