# Start from a base image with Java runtime
FROM openjdk:17-jdk-slim

# Copy the JAR file from the target directory to the container
COPY target/*.jar /app.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app.jar"]

