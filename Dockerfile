# Image for build stage
FROM maven:3.9-eclipse-temurin-17-alpine AS build

# Set temporal workdir for building jar with maven
WORKDIR /tmp/api

# Copying directories into container image
COPY . .

# Build jar artifact 
RUN mvn clean install -DskipTests

# Image for final image
FROM openjdk:17-alpine

# Workdir where artifact will run
WORKDIR /api

# Copying artifact from build stage
COPY --from=build /tmp/api/target/*.jar api.jar

ENTRYPOINT [ "java", "-jar", "api.jar" ]