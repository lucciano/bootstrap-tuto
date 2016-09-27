FROM ubuntu:16.04

#Install git
RUN apt-get update && apt-get install -yq git make curl && apt-get clean

#Install n https://github.com/tj/n
RUN git clone https://github.com/tj/n /opt/n && cd /opt/n && make install

#Install nodejs
RUN n latest

#Install npm

#Install Grunt http://gruntjs.com/
RUN npm install -g grunt-cli
