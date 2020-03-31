# Using ubuntu 18.04 as base image
FROM ubuntu:18.04
RUN apt-get update && \
    apt-get install -y python3-pip python3-dev && \
    apt-get install -y ipython3 && \
    pip3 install --upgrade pip && \
    pip3 install --upgrade pandas && \
    pip3 install --upgrade numpy
ENTRYPOINT ["tail", "-f", "/dev/null"]
