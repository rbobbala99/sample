dockerfile

FROM ubuntu

MAINTAINER Ravindra Babu <ravidevops90@gmail.com>

USER root

#update and install nginx

RUN apt-get -y update && apt-get clean all
RUN apt-get -y install nginx

WORKDIR /etc/nginx

#Expose port for this nginx application

EXPOSE 80

#Define default command
CMD ["nginx"]
