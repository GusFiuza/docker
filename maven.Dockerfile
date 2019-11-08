FROM ubuntu:latest
MAINTAINER Gustavo Fiuza
WORKDIR /home
RUN apt-get update
RUN apt install -y openjdk-11-jdk
RUN apt install -yqq python3-pip
RUN python3 -q -m pip install jupyter
RUN apt remove -yqq python3-pip
ENTRYPOINT mvn --version
