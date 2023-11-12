# Computer Vision Model for Climate wavers

## Overview

This computer vision model is an integral part of our AI-driven disaster response application. The model has been fine-tuned using TensorFlow based on the ResNet architecture. To optimize performance and resource usage, the model has been converted to the OpenVINO Intermediate Representation (IR) format and quantized.

## Model Architecture

- **Base Architecture:** ResNet
- **Framework:** TensorFlow
- **Optimization:** Converted to OpenVINO IR and quantized for efficient deployment.

## Model Training

The model has undergone a comprehensive training process using a dataset relevant to disaster scenarios. Fine-tuning was performed on top of the pre-trained ResNet model, leveraging transfer learning to adapt the model to our specific use case.

## Model Conversion

To enable deployment on the OpenVINO model server, the TensorFlow model was converted to the OpenVINO Intermediate Representation (IR) format. This conversion facilitates efficient execution on a variety of hardware platforms supported by OpenVINO.

## Quantization

Quantization was applied to reduce the precision of the model's weights, leading to a more lightweight model. This optimization is crucial for deploying the model on edge devices and in scenarios with resource constraints.

## Deployment

The model is deployed using the OpenVINO model server, which provides an efficient and scalable solution for serving computer vision models. The server is capable of handling inference requests, making it suitable for real-time disaster response applications.
We provide three different methods for deploying this microservice to openshift clusters.

### Import Git Repositoy (Recommended)
Use the import git repository feature on openshift console.
- Navigate to Add page in the Developer console on openshift
- Select Dockerfile strategy
- Deployment type should be Deployment Config
- Secure routes
- Supply the environment variables after deployment
  
### Automated Command line Deployment
Using the scripts provided in `automate_development` folder, simplifies deployment. To use the scripts, docker and oc must be installed.

#### Build and push image
You can replace the image repository in the scripts `build.sh` in `automate_deployment` or use the repository we provided.
  ```bash
   automate_deployment/./build.sh
   ```
#### Deploy 
If the image repository was changed when building, update the `development.yaml` file in `k8s` folder with your image repository
  ```bash
   automate_deployment/./deploy.sh
   ```

### Tekton pipeline deployment script
Deploy with tekton with the pipeline deployment script in `automated_deployment` directory. Setup environment variabes after deployment
   ```bash
   automate_deployment/./tekton_pipeline.sh
   ```

## Dependencies

- TensorFlow
- OpenVINO Toolkit
- OpenVINO Python API

Refer to the documentation of TensorFlow and OpenVINO for installation instructions and additional details.

## License

This computer vision model is provided under the [license](link/to/license) specified for your use. Please review the license before integrating or modifying the model in your application.

