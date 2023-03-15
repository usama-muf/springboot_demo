# syntax=docker/dockerfile:1

FROM openjdk:11-jre-slim

#RUN mkdir /app

#WORKDIR /app

COPY target/demo-0.0.1-SNAPSHOT.jar demo-0.0.1-SNAPSHOT.jar 

#EXPOSE 8090


# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","/demo-0.0.1-SNAPSHOT.jar"]


