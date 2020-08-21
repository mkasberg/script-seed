FROM ubuntu:20.04
WORKDIR /root

# set entrypoint and copy site stuff so that we can run the server in the docker container 
COPY test.sh ./srv/
COPY style.css ./srv/
COPY index.html ./srv/
COPY main.js ./srv/
COPY highlightjs/ ./srv/highlightjs
COPY seeds ./srv/seeds

CMD  ./srv/test.sh && \
     cd srv && \
     python2 -m SimpleHTTPServer

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get install --no-install-recommends -y libicu-dev liblttng-ust0 wget gnupg2 curl gawk groovy nodejs openjdk-11-jre-headless php python ruby
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# Install Scala from source.
RUN curl -O https://downloads.lightbend.com/scala/2.13.3/scala-2.13.3.tgz && \
    tar -C /opt -xzf scala-2.13.3.tgz && \
    rm scala-2.13.3.tgz
ENV SCALA_HOME=/opt/scala-2.13.3
ENV PATH="${PATH}:${SCALA_HOME}/bin"

# Download Powershell binaries, as there is no Powershell package for 20.04 available yet
RUN apt-get install --no-install-recommends -y libc6 libgcc1 libicu66 && \
    curl -L -o /tmp/powershell.tar.gz https://github.com/PowerShell/PowerShell/releases/download/v7.0.1/powershell-7.0.1-linux-x64.tar.gz && \
    mkdir -p /opt/microsoft/powershell/7 && \
    tar zxf /tmp/powershell.tar.gz -C /opt/microsoft/powershell/7 && \
    chmod +x /opt/microsoft/powershell/7/pwsh && \
    ln -s /opt/microsoft/powershell/7/pwsh /usr/bin/pwsh
