FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
WORKDIR /tmp/src/webapp/target
COPY *.war /workspace
COPY /workspace/*.war /usr/local/tomcat/webapps
