#!/bin/bash
#Description: Sonarqube Installation
#Author: TK
#Date: 03/23/23
 echo "Sonarqube Installation in Progress! Please be Patient!..."
 sleep 1
  yum update -y
  yum install java-11-openjdk-devel -y
  yum install java-11-openjdk -y
 sleep 1
 cd /opt
  yum install wget -y
  wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-9.3.0.51899.zip
  yum install unzip -y
  unzip /opt/sonarqube-9.3.0.51899.zip
  chown -R vagrant:vagrant /opt/sonarqube-9.3.0.51899
 sleep 1
 cd /opt/sonarqube-9.3.0.51899/bin/linux-x86-64
  ./sonar.sh start
  sleep 2
  echo "Installation Complete."
