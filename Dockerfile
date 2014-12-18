## -*- docker-image-name: "moztrp" -*-

FROM ubuntu:14.04

RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list
RUN sed -i 's/archive.ubuntu.com/mirrors.ustc.edu.cn/g' /etc/apt/sources.list.d/proposed.list

RUN apt-get update

RUN apt-get install -y libmysqlclient-dev python-dev python-pip mysql-client

#RUN git clone --recursive git://github.com/mozilla/moztrap

RUN mkdir /moztrap

ADD ./ /moztrap

WORKDIR /moztrap

EXPOSE 8000




