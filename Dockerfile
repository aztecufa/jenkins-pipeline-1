FROM openjdk:8u151-stretch
RUN apt update
RUN apt -y install docker.ce
RUN apt -y install maven git
RUN apt clean