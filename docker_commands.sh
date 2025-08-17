
# Quick Docker Commands to Copy-Paste

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
sudo add-apt-repository "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce docker-ce-cli containerd.io

docker --version

sudo usermod -aG docker $USER

# Pull image

docker pull hello-world

# Run hello-world container

docker run hello-world

# Run nginx

docker run -d -p 8080:80 --name my-nginx nginx

# List running containers

docker ps

# Stop container

docker stop my-nginx

# Remove container

docker rm my-nginx

# Build image from Dockerfile

docker build -t my-python-app .

# Run custom image

docker run my-python-app

# Run container with volume

docker run -d -p 8080:80 -v /host/path:/container/path --name my-nginx nginx
