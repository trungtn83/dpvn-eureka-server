# Use openjdk 17 with debian base as the base image
FROM openjdk:17-jdk-slim AS runtime

# Set the working directory
WORKDIR /app

# Prevent cache (maybe use later)
ARG CACHEBUST=2

# Copy the built JAR file from the current folder to the container
COPY ./build/libs/dpvn-eureka-server-0.0.1-SNAPSHOT.jar /app/

# The command to run the application
CMD ["java", "-jar", "dpvn-eureka-server-0.0.1-SNAPSHOT.jar"]

# Environment variable for Spring profiles
ENV SPRING_PROFILES_ACTIVE=production
