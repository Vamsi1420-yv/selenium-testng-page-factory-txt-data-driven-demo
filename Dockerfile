# Dockerfile
FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests
CMD ["java", "-jar", "target/your-app.jar"]
