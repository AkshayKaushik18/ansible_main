#!/bin/sh

# Download the mc binary
wget https://dl.min.io/client/mc/release/linux-amd64/mc

# Make the mc binary executable
chmod +x mc

# Move the mc binary to /usr/local/bin
mv mc /usr/local/bin
docker_host=172.17.0.2
#storage_type=$(awk ''/^storage_type:' /{ if ($2 !~ /#.*/) {print $2}}' config.yml)
mc alias set myminio http://$docker_host:9000 minioadmin minioadmin

mc mb myminio/archive-bucket
mc mb myminio/emission-bucket
mc mb myminio/error-bucket
mc mb myminio/ingestion-error-bucket
mc mb myminio/input-bucket
mc mb myminio/processing-bucket

