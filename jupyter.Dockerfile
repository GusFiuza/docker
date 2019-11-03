FROM ubuntu:latest
MAINTAINER Gustavo Fiuza
WORKDIR /home
RUN apt-get -qq update
RUN apt install -yqq python3
RUN apt install -yqq python3-pip
RUN python3 -q -m pip install jupyter
RUN apt remove -yqq python3-pip
ENTRYPOINT jupyter notebook --ip 0.0.0.0 --no-browser --allow-root
EXPOSE 8888