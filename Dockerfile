FROM maven:3.8.5-openjdk-8

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

CMD ["java", "-jar", "target/your-app.jar"]
