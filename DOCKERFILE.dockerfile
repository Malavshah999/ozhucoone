# Use a base image that has Docker installed
FROM docker:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the docker-compose.yml file to the container
COPY docker-compose.yml .

# Install docker-compose inside the container
RUN apk update && \
    apk add --no-cache py-pip python-dev libffi-dev openssl-dev gcc libc-dev make && \
    pip install docker-compose

# Command to run when the container starts
CMD ["docker-compose", "up"]