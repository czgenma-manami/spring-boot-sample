FROM openjdk:8-jre-alpine
ADD target/spring-boot-sample.jar spring-boot-sample.jar
EXPOSE 8081
EXPOSE 8001
ENTRYPOINT ["java", "-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=8001", "-jar", "spring-boot-sample.jar"]