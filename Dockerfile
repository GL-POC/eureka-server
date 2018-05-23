FROM        openjdk:8

ADD         /build/libs/eureka-server.jar eureka-server.jar

EXPOSE      8761

ENTRYPOINT  ["java", "-jar", "eureka-server.jar"]


