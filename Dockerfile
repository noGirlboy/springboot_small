FROM openjdk:8-jdk

COPY *.jar /app.jar

CMD ["--server.port=9099"]

EXPOSE 9099

ENTRYPOINT ["java", "-jar", "/app.jar"]
