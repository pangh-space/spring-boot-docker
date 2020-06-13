# 基础镜像
FROM openjdk:8-jdk-alpine

# 设置容器的挂载点
VOLUME /tmp

# 指定工作目录，就是下一条COPY 命令的第二个参数 ./ 默认就是 WORKDIR 目录下
WORKDIR /app

# copy 应用jar、配置文件到镜像中
COPY ["./target/spring-boot-docker-0.0.1-SNAPSHOT.jar", "./"]

# 时区
RUN touch application.properties \
	&& echo "Asia/Shanghai" > /etc/timezone

# 指定容器启动时要执行的命令，但如果存在CMD指令，CMD中的参数会被附加到ENTRYPOINT指令的后面
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app/spring-boot-docker-0.0.1-SNAPSHOT.jar"]

