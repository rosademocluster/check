FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
WORKDIR /tmp/src/webapp/target
COPY ./webapp.war /workspace/source
COPY /workspace/source/*.war /usr/local/tomcat/webapps
