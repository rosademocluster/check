FROM tomcat:latest
RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
RUN cp -R //workspace/source/webapp/target/* /usr/local/tomcat/webapps
