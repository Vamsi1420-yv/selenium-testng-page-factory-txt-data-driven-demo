FROM maven:3.8.8-openjdk-8-slim

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

CMD ["java", "-jar", "target/your-app.jar"]
