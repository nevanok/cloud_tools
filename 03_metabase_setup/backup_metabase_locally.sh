# Run on machine where metabase container is running.
# Obviously, the backup should be copied elsewhere (to laptop or s3 maybe).
# This script stops the metabase container, backs up the data and restarts the app container.

#####################################################################
# Backing up file
#####################################################################
metabase_dir="/home/metabase/metabase.db"
backups_dir="/backups" # This was created manually
sudo docker stop metabase # to stop the container
sudo cp $metabase_dir/metabase.db.mv.db /$backups_dir/metabase.db.mv.db`-date --iso`
sudo docker start metabase # starts metabase again
