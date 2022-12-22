FROM maven:3.8.1-jdk-11
WORKDIR /
ADD . /
RUN mvn clean install
RUN ls
FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
WORKDIR /root/.m2/repository/com/example/maven-project/webapp/1.0-SNAPSHOT
COPY  *.war  /usr/local/tomcat/webapps
