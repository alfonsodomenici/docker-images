FROM debian:buster
MAINTAINER Alfonso Domenici alfonsodomenici.it
RUN apt-get -y update \
  && apt-get -y install unzip \
  && apt-get -y install curl \	
  && apt-get -y  install openjdk-11-jdk-headless
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH "$PATH":/${JAVA_HOME}/bin:.:
