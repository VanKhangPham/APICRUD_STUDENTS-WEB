# ========== STAGE 1: BUILD ==========
FROM maven:3.9.6-eclipse-temurin-21 AS builder
WORKDIR /app

COPY schoolmanager1/pom.xml .
COPY schoolmanager1/mvnw .
COPY schoolmanager1/.mvn .mvn
RUN mvn -B -q -e -DskipTests dependency:go-offline

COPY schoolmanager1/src src
RUN mvn clean package -DskipTests


# ========== STAGE 2: RUN ==========
FROM eclipse-temurin:21-jdk
WORKDIR /app

# copy file jar đã build từ stage 1
COPY --from=builder /app/target/schoolmanager1-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

ENV PORT=8080
CMD ["java", "-jar", "app.jar"]