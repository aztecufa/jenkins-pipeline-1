FROM openjdk:8u151-stretch
RUN apt-get update
RUN apt-get -y install maven git docker.io
RUN apt-get clean