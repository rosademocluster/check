FROM maven:3.8.1-jdk-11
WORKDIR /
ADD . /
RUN mvn clean install
FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
WORKDIR /webapp/target
COPY  webapp.war  /usr/local/tomcat/webapps
