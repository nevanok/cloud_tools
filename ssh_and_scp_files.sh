#!/bin/bash

# This script copies most up to date scripts from local machine to server (change this to pull from github maybe)
# Then ssh's you into the machine
keyfile_path=$1
server_address=$2
local_folder=$3

# Copy across scripts to EC2
scp -r -i $keyfile_path $local_folder ubuntu@$server_address:/home/ubuntu/

# Connect to the metabase server
ssh -i $keyfile_path ubuntu@$server_address
