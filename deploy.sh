#!/bin/bash

RESOURCE_GROUP="medic-site"
LOCATION="eastus"
STORAGE_ACCOUNT="medicsite410056"

echo "Creating Resource Group..."
az group create \
  --name $RESOURCE_GROUP \
  --location $LOCATION

echo "Creating Storage Account..."
az storage account create \
  --name $STORAGE_ACCOUNT \
  --resource-group $RESOURCE_GROUP \
  --location $LOCATION \
  --sku Standard_LRS \
  --kind StorageV2

echo "Enabling Static Website..."
az storage blob service-properties update \
  --account-name $STORAGE_ACCOUNT \
  --static-website \
  --index-document index.html

echo "Uploading ALL site files..."
az storage blob upload-batch \
  --account-name $STORAGE_ACCOUNT \
  --source . \
  --destination '$web'

echo "Fetching website URL..."
az storage account show \
  --name $STORAGE_ACCOUNT \
  --resource-group $RESOURCE_GROUP \
  --query "primaryEndpoints.web" \
  --output tsv