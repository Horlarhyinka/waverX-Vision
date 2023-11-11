#!/bin/bash
docker login quay.io
docker build -t quay.io/olagoldhackxx/waverx-vision:v1 .
docker push quay.io/olagoldhackxx/waverx-vision:v1
