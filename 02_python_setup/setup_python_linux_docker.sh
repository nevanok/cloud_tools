# This link was really useful
# https://towardsdatascience.com/a-short-guide-to-using-docker-for-your-data-science-environment-912617b3603e

# make directory for docker file on EC2
mkdir docker_dir

# Copy docker file here
cp /home/ubuntu/scripts/docker_setup/test_2/Dockerfile /home/ubuntu/docker_dir
cd /home/ubuntu/docker_dir


# Build docker image, need sudo for permissions
sudo docker build -t nevan_python3_setup /home/ubuntu/docker_dir

# Run docker image
# sudo docker run --rm nevan_python3_setup
# sudo docker run -i --rm nevan_python3_setup
# Need to use interactive flag (-i) so that you end up in the terminal within the docker container.
# Does this mean I need to run Docker on a screen?
# How does the container persist? How do I attach/detach?

# This runs in background (-d), destroys itself when stopped (--rm) and doesn't stop until told.
# sudo docker run -d --rm nevan_python3_setup tail -f /dev/null
# This creates a bind mount while running
sudo docker run -d --rm --mount type=bind,source=/app,target=/home/ubuntu/docker_dir/docker_mount_test_01 nevan_python3_setup tail -f /dev/null
# "source" The source of the mount. For bind mounts, this is the path to the file or directory on the Docker daemon host
#   This is where you will find files created in the container's target drive.
# "target" is the drive you want to share with the container.

# This attaches to the container and launches a bash shell.
# Insert relevant container id
sudo docker exec -it xxxxxxxxxxxx /bin/bash
# Can run ipython3 or whatever from there.
