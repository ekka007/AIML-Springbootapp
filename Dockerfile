# Use a lightweight OpenJDK base image
FROM openjdk:8-jdk-slim

# Copy the Spring Boot JAR file into the container
COPY target/*.jar app.jar

# Expose the default Spring Boot port
EXPOSE 8080

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/app.jar"]
