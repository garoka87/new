# FROM openjdk:17-jdk-alpine
FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

# Copier le jar et le renommer en app.jar pour simplifier
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]
