# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.194.3/containers/ubuntu/.devcontainer/base.Dockerfile

# [Choice] Ubuntu version: bionic, focal, etc
ARG VARIANT="jammy"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

###
# Customizations for Script-Seed below.
###

# Microsoft GPG keys for PowerShell
# https://docs.microsoft.com/en-us/powershell/scripting/install/install-ubuntu?view=powershell-7
RUN wget -q https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb && \
    dpkg -i packages-microsoft-prod.deb && \
    rm packages-microsoft-prod.deb

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends\
    curl\
    erlang\
    gambas3\
    gawk\
    gnupg2\
    golang\
    libicu-dev\
    lua5.3\
    liblua5.3-dev\
    luarocks\
    nodejs\
    openjdk-11-jre-headless\
    php\
    powershell\
    python3\
    ruby\
    tcl\
    vim
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64

# Install Groovy binaries
# Groovy is in the Ubuntu repos but version 3+ has bugfixes that get rid of warnings.
RUN wget https://groovy.jfrog.io/artifactory/dist-release-local/groovy-zips/apache-groovy-binary-4.0.5.zip && \
    unzip apache-groovy-binary-4.0.5.zip -d /opt && \
    rm apache-groovy-binary-4.0.5.zip
ENV GROOVY_HOME="/opt/groovy-4.0.5"
ENV PATH="${PATH}:${GROOVY_HOME}/bin"

# Install Scala from source.
RUN curl -L -O https://github.com/lampepfl/dotty/releases/download/3.2.0/scala3-3.2.0.tar.gz && \
    tar -C /opt -xzf scala3-3.2.0.tar.gz && \
    rm scala3-3.2.0.tar.gz
ENV SCALA_HOME=/opt/scala3-3.2.0
ENV PATH="${PATH}:${SCALA_HOME}/bin"

# Install Deno
ENV DENO_INSTALL="/opt/deno"
RUN curl -fsSL https://deno.land/x/install/install.sh | sh
ENV PATH="${DENO_INSTALL}/bin:${PATH}"
