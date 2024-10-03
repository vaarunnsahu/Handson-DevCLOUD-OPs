# Use a base Ubuntu image
FROM ubuntu:20.04

# Set environment variable to avoid interactive prompts
ENV DEBIAN_FRONTEND=noninteractive

# Update and install Docker
RUN apt-get update && \
    apt-get install -y \
    docker.io && \
    systemctl enable docker

# Start Docker service
CMD ["systemctl", "start", "docker"]

