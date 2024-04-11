FROM openjdk:8
USER root
#3、基础镜像基于debian linux套件,所以下载软件使用apt-get命令
RUN apt-get update
#4、在容器中安装docker
RUN curl -sSL https://get.docker.com/ | sh
ADD target/newbee-mall-1.0.0-SNAPSHOT.jar app.jar
EXPOSE 9099
ENTRYPOINT java -jar /app.jar
