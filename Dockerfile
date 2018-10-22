FROM node:8-stretch

MAINTAINER Alexander Bobrov, ITBeaver <al.bobrov@itbeaver.co>

ENV NPM_CONFIG_LOGLEVEL info
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update &&\
  apt-get install -y libgtk3-dev libgconf-2-4 \
    libasound2 libxtst6 libxss1 libnss3 xvfb build-essential

COPY ./scripts/xvfb /etc/init.d/xvfb

RUN /etc/init.d/xvfb start
