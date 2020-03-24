FROM ubuntu:18.04
RUN apt update
RUN apt install -y nginx
COPY default /etc/nginx/sites-available/default
CMD ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
