#!/bin/bash -l

# Install development tools packages

sudo yum install -y subversion
sudo yum install -y git
sudo yum install -y vim

# Install and configure SDKMAN
cd ~
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
sed -i.bak -e s/sdkman_auto_answer=false/sdkman_auto_answer=true/g ~/.sdkman/etc/config
sdk version

# Install Java 8
sdk install java
java -version

# Install Groovy
sdk install groovy
groovy -version

# Install Gradle
sdk install gradle
gradle -version

# Install Maven
sdk install maven
mvn -version