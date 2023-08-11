FROM ubuntu:20.04

# Prevent dialog prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages and dependencies
RUN apt-get update && \
    apt-get install -y wget openjdk-8-jdk git imagemagick libreoffice pdftohtml python2.7 && \
    update-java-alternatives --set java-1.8.0-openjdk-amd64

# Install Apache Maven 3.2
RUN wget http://archive.apache.org/dist/maven/maven-3/3.2.0/binaries/apache-maven-3.2.0-bin.tar.gz && \
    tar xzvf apache-maven-3.2.0-bin.tar.gz -C /opt/ && \
    ln -s /opt/apache-maven-3.2.0/bin/mvn /usr/bin/mvn

# Install Apache Ant 1.7.1
RUN wget http://archive.apache.org/dist/ant/binaries/apache-ant-1.7.1-bin.tar.gz && \
    tar xzvf apache-ant-1.7.1-bin.tar.gz -C /opt/ && \
    ln -s /opt/apache-ant-1.7.1/bin/ant /usr/bin/ant

# Install NodeJS 0.10.32
RUN wget https://nodejs.org/dist/v0.10.32/node-v0.10.32-linux-x64.tar.gz && \
    tar xzvf node-v0.10.32-linux-x64.tar.gz -C /opt/ && \
    ln -s /opt/node-v0.10.32-linux-x64/bin/node /usr/bin/node && \
    ln -s /opt/node-v0.10.32-linux-x64/bin/npm /usr/bin/npm && \
    npm install -g yo grunt-cli gulp bower || true

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

CMD [ "/bin/bash" ]
