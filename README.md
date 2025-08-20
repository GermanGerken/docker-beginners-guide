
# Docker for Beginners - Quick Start Guide

Welcome to this quick start guide for Docker beginners! This repository contains basic commands and instructions to help you install, set up, and start using Docker quickly.

## Youtube video explanation 
Link - https://youtu.be/qHVvBYIeydQ

## What You Will Find Here
- Installation instructions for Linux and general info for Windows/macOS
- Explanation of Docker components
- Basic Docker commands you can run directly in your terminal

---

## 1. Installation (Linux - Ubuntu)
```bash
sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io
```

For Windows/macOS, download and install Docker Desktop from [docker.com](https://www.docker.com/products/docker-desktop).

## 2. Verify Docker Installation
```bash
docker --version
```

## 3. Add User to Docker Group (Linux)
```bash
sudo usermod -aG docker $USER
```
Then log out and back in.

## 4. Key Docker Components
- Docker Engine: Core software that runs containers
- Docker Daemon (dockerd): Background service managing containers and images
- Docker Client (CLI): Command-line interface to interact with Docker
- Images: Blueprints for containers
- Containers: Running instances of images
- Volumes: Persistent storage for containers
- Networks: Virtual networks for container communication

## 5. Basic Docker Commands
```bash
# Pull an image from the Docker Hub

   docker pull hello-world

# Run a container
   docker run hello-world

# Run Nginx container in detached mode, mapping port 8080
   docker run -d -p 8080:80 --name my-nginx nginx

# List running containers
   docker ps

# Stop a container
   docker stop my-nginx

# Remove a container
   docker rm my-nginx

# Build an image from Dockerfile
   docker build -t my-python-app .

# Run your custom image
   docker run my-python-app

# Run container with volume mounted (persistent data)
   docker run -d -p 8080:80 -v /host/path:/container/path --name my-nginx nginx
```

## 6. Example: Simple Python Dockerfile

Create a file named `Dockerfile`:
```Dockerfile
FROM python:3.9-slim
COPY app.py .
CMD ["python", "app.py"]
```

Create `app.py`:
```python
print("Hello from my custom Docker container!")
```

Build and run:
```bash
docker build -t my-python-app .
docker run my-python-app
```

---

If you like this guide, don't forget to star the repo and subscribe to German Gerken on YouTube for more tutorials!
