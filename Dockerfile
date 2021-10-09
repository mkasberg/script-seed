FROM ubuntu:20.04

WORKDIR /root/
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y wget

# Microsoft GPG keys for PowerShell
# https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7
RUN wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb

RUN apt-get update && \
    apt-get install --no-install-recommends -y\
    curl\
    erlang\
    gawk\
    gnupg2\
    golang\
    groovy\
    julia\
    libicu-dev\
    liblttng-ust0\
    lua5.3\
    liblua5.3-dev\
    luarocks\
    nodejs\
    openjdk-11-jre-headless\
    php\
    powershell\
    python\
    ruby\
    tcl\
    vim\
    wget
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# Install Scala from source.
RUN curl -O https://downloads.lightbend.com/scala/2.13.3/scala-2.13.3.tgz && \
    curl -fsSL https://deno.land/x/install/install.sh | sh && mv /root/.deno/bin/deno /bin/deno && \
    tar -C /opt -xzf scala-2.13.3.tgz && \
    rm scala-2.13.3.tgz
ENV SCALA_HOME=/opt/scala-2.13.3
ENV PATH="${PATH}:${SCALA_HOME}/bin"
ENV DENO_INSTALL="/home/${USER}/.deno"
ENV PATH="${DENO_INSTALL}/bin:${PATH}"

COPY docker-entrypoint.sh /

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["/bin/bash"]
