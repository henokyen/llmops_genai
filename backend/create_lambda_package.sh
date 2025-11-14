#!/bin/bash

# AWS Lambda Deployment Script for FastAPI

echo "Creating Lambda deployment package..."

# Create a temporary directory for the deployment package
mkdir -p lambda-package

# Copy your application files
cp server.py lambda-package/
cp lambda_handler.py lambda-package/
cp summary.txt lambda-package/
cp -r configs lambda-package/

# Install dependencies in the package directory
pip install -r requirements.txt -t lambda-package/

# Create the deployment zip
cd lambda-package
zip -r ../lambda-deployment.zip .
cd ..

# Clean up
rm -rf lambda-package

echo "Deployment package created: lambda-deployment.zip"
echo "Upload this file to AWS Lambda"
