# Use an official OpenJDK runtime as a parent image
FROM adoptopenjdk:20-jre-hotspot

# Set the working directory in the container
WORKDIR /app

# Copy the packaged JAR file into the container at the working directory
COPY target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar

# Specify the command to run on container start
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]