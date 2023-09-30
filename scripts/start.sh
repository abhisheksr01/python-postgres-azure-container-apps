#!/usr/bin/env bash
echo "** Starting the app and db"
docker compose up -d

echo "** Sleeping for 10 sec to ensure db services are running before uploading dump data"
sleep 10

echo "** Uploading dump data & then sleeping for 5 sec **"
docker compose exec db /bin/bash ./opt/upload.sh
sleep 5

echo "** Performing Health Check on the App **"
curl "http://127.0.0.1:3000/"