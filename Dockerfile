FROM maven:3.8.1-jdk-11
WORKDIR /
ADD . /
RUN mvn clean 
FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
RUN ls /usr/local/tomcat/webapps
RUN pwd
RUN ls -al
