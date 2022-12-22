FROM tomcat:latest
ENV HOME= /workspace/source/webapp/target
WORKDIR $HOME
ADD pom.xml $HOME
RUN mvn clean 
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
RUN ls /usr/local/tomcat/webapps
RUN pwd
RUN ls -al
