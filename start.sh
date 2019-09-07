#!/bin/sh
export ELK_VERSION=7.2.1
rm -rf docker-compose.yml; envsubst < "docker-compose.tmp" > "docker-compose.yml";
# Download data file
echo 'Downloading data file...'
curl -O -J -L  https://github.com/mintel/sre-interview-assets/raw/master/challenges/challenge_01_docker_elk_apache_logs/WEB_access_log.log.gz -o WEB_access_log.log.gz
# Unpack data file
echo 'Extracting data file...'
gzip -d WEB_access_log.log.gz
# Bring up ELK stack...
echo 'Starting ELK...'
docker-compose up -d


