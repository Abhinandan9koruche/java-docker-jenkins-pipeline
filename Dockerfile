# Use official OpenJDK image
FROM openjdk:17-jdk-slim

# Set working directory inside container
WORKDIR /app

# Copy everything to /app directory
COPY . /app

# Compile Java code
RUN javac src/Main.java

# Run the Java program
CMD ["java", "-cp", "src", "Main"]
