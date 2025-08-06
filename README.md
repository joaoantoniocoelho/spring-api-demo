# spring-api-demo

This is a study repository for testing CI/CD and basic AWS deployment.

## What it does

- Builds a Spring Boot API using Gradle
- Creates a Docker image with multi-stage build
- Uses GitHub Actions to:
    - Build the image
    - Copy the image to an EC2 instance via SCP
    - Run the container on EC2 (port 80)
    - Push the code to a GitLab mirror and keeps the commit history

## Technologies

- Java 21
- Spring Boot
- Gradle
- Docker
- GitHub Actions
- AWS EC2
- GitLab (as mirror only)

## Notes

- This is for learning purposes only
- GitLab is only used as a mirror; no CI/CD runs there
