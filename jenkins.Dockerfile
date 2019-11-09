FROM ubuntu:latest
LABEL Gustavo Fiuza
WORKDIR /home
RUN apt-get update
RUN apt install -y openjdk-11-jdk
RUN apt install -y maven
RUN apt install -y wget
RUN wget http://mirrors.jenkins.io/war-stable/latest/jenkins.war
ENTRYPOINT java -jar jenkins.war --httpPort=8180
