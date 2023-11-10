# Use the official OpenVINO Model Server base image
FROM openvino/model_server:latest

# Set the working directory
WORKDIR /opt/ml/model

# Copy your model files to the container
COPY models/ /opt/ml/models/

# Set environment variables (replace these with your actual values)
ENV MODEL_NAME=waverX-Vision
ENV MODEL_PATH=/opt/ml/models
ENV CONFIG_PATH=/opt/ml/models/config.json
ENV OVMS_PORT=9001

# Expose the port that OpenVINO Model Server will run on
EXPOSE $OVMS_PORT

# Start the OpenVINO Model Server
CMD ["ovms", "--model_path", "$MODEL_PATH", "--model_name", "$MODEL_NAME", "--port", "$OVMS_PORT", "--config_path", "$CONFIG_PATH"]
