FROM ubuntu:latest
MAINTAINER Gustavo Fiuza
WORKDIR /home
RUN apt-get update
RUN apt install -y openjdk-11-jdk
RUN apt install -y maven
RUN JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/bin
RUN MAVEN_HOME=/usr/share/maven/bin
ENTRYPOINT bash
