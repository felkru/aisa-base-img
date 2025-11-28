#!/bin/bash
set -euo pipefail

# Build the Arena 3.0 image
# Base image: nvcr.io/nvidia/pytorch:25.11-py3
# Python version: 3.11 (Arena uses 3.11)

# Note: The Dockerfile now handles cloning Arena 3.0 and setting up /venv/conda and /venv/uv

docker buildx build \
    --build-arg BASE_IMAGE=nvcr.io/nvidia/pytorch:25.11-py3 \
    --build-arg PYTHON_VERSION=3.11 \
    -t vastai/arena-3.0:latest \
    .
