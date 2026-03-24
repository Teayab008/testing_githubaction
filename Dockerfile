FROM eclipse-temurin:8-jre-alpine

EXPOSE 8080

COPY build/libs/*.jar /usr/app/app.jar
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
