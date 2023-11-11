# Use the official OpenVINO Model Server base image
FROM openvino/model_server:latest

# Set the working directory
WORKDIR /opt/ml/models

# Copy your model files to the container
COPY models/ /opt/ml/models/

# Expose the port that OpenVINO Model Server will run on
EXPOSE 9002
EXPOSE 9001

# Start the OpenVINO Model Server
CMD ["ovms", "--port", "9001", "--rest_port", "9002", "--config_path", "/opt/ml/models/config.json"]
