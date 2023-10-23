FROM openjdk:19-jdk-alpine3.16
WORKDIR /app
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=./target/my-app-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
CMD ["java","-jar","/app.jar"]   