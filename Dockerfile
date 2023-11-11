FROM python:3.10-slim

# Set the working directory
WORKDIR /opt/models

# Copy your model files to the container
COPY models/ /opt/models/
