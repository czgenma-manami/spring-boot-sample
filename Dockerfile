FROM openjdk:8-jre-alpine
ADD build/libs/spring-boot-sample.jar spring-boot-sample.jar
ENTRYPOINT ["java", "-jar", "spring-boot-sample.jar"]