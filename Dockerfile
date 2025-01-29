FROM openjdk:17-jdk-slim-buster

# Copy the application JAR
COPY build/libs/app.jar /app.jar

# Ensure the tar file exists and extract it
RUN mkdir -p /destination-dir && \
    tar -xzvf sample.tar.gz -C /destination-dir || echo "sample.tar.gz not found"

# Set the entry point for the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
