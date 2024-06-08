# This will use the base image of alpine linux kernel and nginx web server latest version which I pulled from the Docker Hub.
FROM nginx:alpine

#This will install the nginx and git if not available in our alpine container .
RUN apk update && apk add --no-cache \nginx \git

#This will clone the git repository provided by Young Innovators to my container in /.
RUN git clone https://github.com/younginnovations/internship-challenges

#This will copy the index html files to the nginx web server document root folder for serving the webpages.
RUN cp -r /internship-challenges/devops/docker-me/site /usr/share/nginx/html

#This will expose the Port '9000' for http listening. 
EXPOSE 9000

#This will start the nginx web daemon ( process ) for http requests in our container.
CMD ["nginx", "-g", "daemon off;"]


# DONE !!

#Our webpage is hosted in a Docker Container . 

#The commands to build a container image based on this dockerfile  and to run it is provided in the readme file . 
 
