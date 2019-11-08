FROM openjdk:8-jdk-alpine
EXPOSE 8080
ARG arg
CMD echo arg
RUN if ["$arg" = "Windows"]; then
  COPY target/spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar /app.jar
  CMD ["java","-jar","app.jar"]
fi
RUN if ["$arg" = "Linux"]; then
    ADD target/spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar app.jar
    ENTRYPOINT ["java","-jar","app.jar"]
fi
