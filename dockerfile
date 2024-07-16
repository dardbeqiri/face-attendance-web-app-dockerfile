# Use the default Ubuntu 22.04 image
FROM ubuntu:22.04

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install necessary initial packages
RUN apt-get update && \
    apt-get install -y software-properties-common git

# Add deadsnakes PPA for Python 3.8 and update package list
RUN add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update

# Install Python 3.8 and other dependencies
RUN apt-get install -y python3.8 python3.8-dev python3.8-distutils python3-virtualenv cmake npm

# Clone the repository
RUN git clone https://github.com/dardbeqiri/face-attendance-web-app-react-python.git

# Setup the backend
WORKDIR /face-attendance-web-app-react-python/backend
RUN python3.8 -m virtualenv venv
RUN /bin/bash -c "source venv/bin/activate && pip install -r requirements.txt"

# Setup the frontend
WORKDIR /face-attendance-web-app-react-python/frontend/face-attendance-web-app-front
RUN npm install

# Expose necessary ports
EXPOSE 8000
EXPOSE 3000

# Copy the entrypoint script into the container
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Use entrypoint script to start backend and frontend
ENTRYPOINT ["/entrypoint.sh"]
