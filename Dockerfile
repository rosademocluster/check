FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
WORKDIR /workspace/source
COPY ./webapp.war /usr/local/tomcat/webapps

