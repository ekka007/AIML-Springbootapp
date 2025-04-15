# Use a slim Java runtime as the base image.
FROM openjdk:17-jdk-alpine

# Set the working directory inside the container.
WORKDIR /app

# Copy the JAR file from the current directory to the container.
COPY app.jar /app/app.jar

# Expose the port that your Spring Boot app is set to use (commonly 8080).
EXPOSE 8080

# Run the application.
ENTRYPOINT ["java", "-jar", "app.jar"]
