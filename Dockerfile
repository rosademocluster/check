FROM maven:3.8.1-jdk-11
WORKDIR /
ADD . /
RUN mvn clean 
RUN find / -name *.war
