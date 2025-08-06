# Etapa de build com Gradle global
FROM gradle:8.7.0-jdk21-alpine as builder

WORKDIR /app
COPY . .

RUN gradle clean bootJar -x test

# Etapa final: só roda o .jar
FROM eclipse-temurin:21-jdk-alpine

WORKDIR /app
COPY --from=builder /app/build/libs/*.jar app.jar

EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
