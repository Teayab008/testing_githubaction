# Use official lightweight OpenJDK 8 image
FROM eclipse-temurin:8-jre-alpine

# Expose the port your app runs on
EXPOSE 8080

# Copy the built JAR from Gradle into the container and rename it to app.jar
COPY build/libs/*.jar /usr/app/app.jar

# Set working directory
WORKDIR /usr/app

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
