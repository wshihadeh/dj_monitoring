# Project namespace: index.docker.io by default
NAMESPACE ?= wshihadeh
# Image name
NAME := djs_sql_expoter
# Docker registry
REGISTRY ?= index.docker.io
# Docker image reference
IMG := ${REGISTRY}/${NAMESPACE}/${NAME}
# Fetch the git branch name if it is not provided
IMAGE_TAG := dj-metrics-v1

# Make sure recipes are always executed
.PHONY: build push clean

# Build and tag Docker image
build:
	@echo "Building Docker Image ..."; \
	docker build -t ${IMG}:${IMAGE_TAG} . ;

# Push Docker image
push:
	@echo "Pushing Docker image ..."; \
	docker push ${IMG}:${IMAGE_TAG};

# Clean up the created images locally
clean:
	docker rmi -f ${IMG}:${IMAGE_TAG};
