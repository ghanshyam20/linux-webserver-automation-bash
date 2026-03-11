#!/bin/bash

# Stop script if any command fails
set -e

echo "Starting full web server deployment..."

echo "Step 1: Preparing server..."
bash prepare_server.sh

echo "Step 2: Setting up database..."
bash setup_database.sh

echo "Database configured."

echo "Step 3: Installing WordPress..."
bash install_wordpress.sh

echo "WordPress installed!"

echo "Step 4: Checking services..."
bash check_services.sh

echo "Deployment completed successfully!"
