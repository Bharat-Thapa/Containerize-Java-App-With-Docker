# Stage 1: Build stage
FROM openjdk:11 AS builder

# Set the working directory in the container
WORKDIR /app

# Copy the source code into the container
COPY src/* .

# Compile the Java code
RUN javac Main.java

# Stage 2: Execution stage
FROM openjdk:11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the compiled classes from the builder stage
COPY --from=builder /app .

# Run the Java application
CMD ["java", "Main"]
