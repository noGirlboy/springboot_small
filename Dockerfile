FROM java:8

COPY *.jar /app.jar

CMD ["--server.port=9099"]

EXPOSE 9099

ENTRYPOINT ["java", "-jar", "/app.jar"]
