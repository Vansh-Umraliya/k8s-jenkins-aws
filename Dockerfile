FROM openjdk:17-jdk-slim-buster

# Ensure the correct JAR file name
ARG JAR_FILE=build/libs/Jhooq-k8s-0.0.1-SNAPSHOT.jar

# Copy the JAR file (replace the exact file name if needed)
COPY ${JAR_FILE} /app.jar

# Create a destination directory and extract files from the tar
RUN mkdir -p /destination-dir-for-add
ADD sample.tar.gz /destination-dir-for-add/

# Set entry point for running the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
