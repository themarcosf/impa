FROM mcr.microsoft.com/devcontainers/python:3.12

# Install system dependencies
RUN set -eux && \
    apt-get update && \
    apt-get install -y --no-install-recommends udev && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Install pip-tools
RUN python -m pip install --no-cache-dir --upgrade pip && \
    python -m pip install --no-cache-dir pip-tools

# Set workdir
WORKDIR /workspace
