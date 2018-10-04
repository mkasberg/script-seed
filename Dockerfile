FROM ubuntu:18.04

WORKDIR /root

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install -y curl groovy nodejs openjdk-8-jre-headless php python ruby
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Install Scala from source.
RUN curl -O https://downloads.lightbend.com/scala/2.12.2/scala-2.12.2.tgz && \
    tar -C /opt -xzf scala-2.12.2.tgz && \
    rm scala-2.12.2.tgz
ENV SCALA_HOME=/opt/scala-2.12.2
ENV PATH="${PATH}:${SCALA_HOME}/bin"

