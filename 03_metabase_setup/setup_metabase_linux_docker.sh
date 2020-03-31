# Run this on the machine that will host metabase.
# Sets up a new metabase user, creates storage for metabase app, and runs the
#   latest metabase container in the background.

# Add a new metabase user (watch out for later permissions errors)
sudo useradd -m metabase

# Create folder for Metabase DB files for metabase useradd
sudo mkdir /home/metabase/metabase.db

# Pull down the latest docker metabase image
sudo docker pull metabase/metabase:latest

# Start metabase using docker run
sudo docker run -d -p 3000:3000 -v /home/metabase/metabase.db:/metabase.db -e "MB_DB_FILE=/metabase.db" --name metabase metabase/metabase
# -v specifies maps persistent storage from /home/metabase/metabase.db on server to /metabase.db in docker container.
# -d runs in background
# -p 3000:3000 specifies port
# -e specify DB location
# --name specifies name of container
# metabase/metabase, this specifies the image to use. Should pull latest if hasn't been done already.
# Can use "--restartunless-stopped" to restart the container if it crashes unless manually stopped.

# Now navigate to to ip_address:port in web browser.
