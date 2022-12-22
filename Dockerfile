FROM maven:3.8.1-jdk-11 as maven_builder
WORKDIR /
ADD . /
#RUN mvn clean install
RUN ["/usr/local/bin/mvn-entrypoint.sh", "mvn", "verify", "clean", "--fail-never"]
RUN mvn clean install
RUN mvn package -Dmaven.test.skip=true
#RUN cp -r /server/target/*.jar /
FROM tomcat:latest
RUN cp -r /usr/local/tomcat/webapps.dist/* /usr/local/tomcat/webapps
COPY --from=maven_builder /webapp/target/webapp.war /usr/local/tomcat/webapps
EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "server.jar"]
