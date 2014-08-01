# DOCKER-VERSION 0.3.4
FROM ubuntu:12.04

# Set Proxy
# ENV http_proxy <HTTP_PROXY>
# ENV https_proxy <HTTPS_PROXY>

# Install Node.js and npm
# `RUN apt-get install -y npm` will install old version
RUN apt-get -y update
RUN apt-get install -y python-software-properties
RUN apt-add-repository ppa:chris-lea/node.js
RUN apt-get -y update
RUN apt-get install -y nodejs

# Bundle app source
COPY . /src

# Install app dependencies
RUN cd /src; npm install

EXPOSE 8080
CMD ["node", "/src/index.js"]
