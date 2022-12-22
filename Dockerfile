FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
WORKDIR /workspace/source/webapp/target
RUN ls /usr/local/tomcat/webapps
RUN pwd
RUN ls -al
