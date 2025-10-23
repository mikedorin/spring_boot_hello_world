# Use an official OpenJDK runtime as base
FROM eclipse-temurin:17-jdk

# Copy the built jar file from your target directory
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Tell Docker how to start your app
ENTRYPOINT ["java","-jar","/app.jar"]

# Optional: make sure it listens on Render’s port
EXPOSE 8080
