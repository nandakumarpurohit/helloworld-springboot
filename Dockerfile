FROM openjdk:8-jdk-alpine
EXPOSE 8080
CMD echo arg
if(arg = "Windows") {
  COPY target/spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar /app.jar
  CMD ["java","-jar","app.jar"]
}
else {
	ADD target/spring-boot-hello-world-example-0.0.1-SNAPSHOT.jar app.jar
    ENTRYPOINT ["java","-jar","app.jar"]
}
