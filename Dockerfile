# 1. Base image (OS + Java)
FROM eclipse-temurin:8-jdk-alpine

# 2. Create app directory inside container
WORKDIR /app

# 3. Copy the JAR file into container
COPY target/java-devops-app-1.0.jar app.jar

# 4. Expose application port
EXPOSE 8080

# 5. Command to run the app
ENTRYPOINT ["java", "-jar", "app.jar"]


