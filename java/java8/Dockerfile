FROM debian:stretch-backports
MAINTAINER Alfonso Domenici alfonsodomenici.it
RUN apt-get -y update \
  && apt-get -y install unzip \
  && apt-get -y install curl \	
  && apt-get -y  install openjdk-8-jdk-headless
ENV JAVA_HOME /usr/lib/jvm/java-1.8.0-openjdk-amd64
ENV PATH "$PATH":/${JAVA_HOME}/bin:.:
