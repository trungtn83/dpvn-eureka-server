#!/bin/bash

# Ensure the latest version of the application is built without using cache for the git clone step
export CACHEBUST=$(date +%s)

echo "Bringing down any existing services..."
docker compose down

echo "Building new Docker image with CACHEBUST to avoid caching git clone..."
docker compose build

echo "Starting up services..."
docker compose up -d

echo "Deployment completed."
