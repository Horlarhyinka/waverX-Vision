FROM openvino-model-server:latest

WORKDIR /opt/model
COPY ./model /opt/model
RUN chmod -R a+rwx /opt/model
