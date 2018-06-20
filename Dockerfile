FROM openjdk:8-jdk-alpine
EXPOSE 8761
VOLUME /tmp
ARG build/libs/
ADD eureka-server-0.0.1-SNAPSHOT.jar eureka-server-0.0.1-SNAPSHOT.jar
ENV JAVA_OPTS=""
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /eureka-server-0.0.1-SNAPSHOT.jar