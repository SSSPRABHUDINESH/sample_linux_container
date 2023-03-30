FROM ubuntu:22.04
MAINTAINER Your Name <prabhudinesh2001@gmail.com>

# Install required packages
RUN apt-get update && \
    apt-get install -y \
    curl \
    wget \
    git \
    nano \
    vim \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy your code to the container
COPY . /app

# Install any necessary dependencies
RUN pip3 install -r requirements.txt

# Expose the necessary ports
EXPOSE 8000

# Start the application
CMD ["python3", "app.py"]
