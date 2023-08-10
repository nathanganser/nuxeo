FROM ubuntu:20.04

# Prevent dialog prompts
ENV DEBIAN_FRONTEND=noninteractive

# Install required packages
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk maven git ant imagemagick libreoffice pdftohtml nodejs npm python2.7 && \
    update-java-alternatives --set java-1.8.0-openjdk-amd64 && \
    npm install -g yo grunt-cli gulp bower || true

# Set Java environment variables
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$JAVA_HOME/bin:$PATH

CMD [ "/bin/bash" ]
