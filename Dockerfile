FROM openjdk:8
USER root
ADD target/newbee-mall-1.0.0-SNAPSHOT.jar app.jar
EXPOSE 9099
ENTRYPOINT java -jar /app.jar
