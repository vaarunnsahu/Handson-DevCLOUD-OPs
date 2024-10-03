FROM ubuntu

# Update the package list
RUN apt update && \
    apt install -y git tree && \
    touch fileX

