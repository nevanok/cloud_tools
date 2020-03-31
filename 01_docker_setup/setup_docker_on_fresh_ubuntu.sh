# Run on the machine you want to install Docker on.
# Keep an eye on output from script to ensure correct setup.

# Update apt, always.
sudo apt-get update

# Install packages which enable apt to use a repository over https
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add dockers offcial GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Check if this key exists by searching for the last 8 digits of the offcial key
sudo apt-key fingerprint 0EBFCD88

# Setup the latest stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Install docker community edition
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Check if docker install is successful
sudo docker run hello-world
