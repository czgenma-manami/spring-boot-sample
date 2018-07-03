FROM openjdk:8-jre-alpine
VOLUME /tmp
ADD target/spring-boot-sample.jar spring-boot-sample.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /spring-boot-sample.jar