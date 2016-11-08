FROM openjdk:8-jdk

RUN apt-get update -y \
    && apt-get install apt-transport-https -y \
    && echo "deb http://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list \
    && apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823 \
    && apt-get update -y \
    && apt-get install sbt -y
