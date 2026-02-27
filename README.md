# TechCrush-Capstone-project-1
STATIC WEBSITE DEPLOYMENT TO AZURE VIA CLI + GITHUB ACTIONS
<!-- # TechCrush-Capstone-project-1
STATIC WEBSITE DEPLOYMENT TO AZURE VIA CLI + GITHUB ACTIONS
# Static Website Deployment to Azure via CLI + GitHub Actions

## Project Overview

This project demonstrates how to deploy a static website to Microsoft Azure Blob Storage using:

- Azure CLI (Bash Script)
- Azure Storage Account (Static Website Hosting)
- GitHub Actions (CI/CD Automation)

The deployment automatically updates the live site whenever changes are pushed to the main branch.

---

## Architecture

1. Azure Resource Group
2. Azure Storage Account (StorageV2)
3. Static Website Hosting Enabled
4. Files uploaded to `$web` container
5. GitHub Actions automates deployment on push

---

## Project Structure
my-static-site/
│
├── index.html
├── css/
├── js/
├── images/
├── fonts/
├── deploy.sh
└── .github/workflows/deploy.yml


---

# Azure CLI Provisioning

# Step 1: Login

az login

# Step 2: Run Deployment Script
./deploy.sh
#This script:
Creates a resource group
Creates a storage account
Enables static website hosting
Uploads site files
Outputs the live URL

CI/CD Automation with GitHub Actions

This project uses GitHub Actions to automatically deploy updates on every push to main.

Workflow Location
.github/workflows/deploy.yml

Required Secret
AZURE_CREDENTIALS

Generated using:
az ad sp create-for-rbac --name "static-site-sp" --role contributor --scopes /subscriptions/79a658af-f8e8-460d-a667-9b6a877c2ddd
Live Demo

Click Here to View Live Site
https://medicsite410056.z13.web.core.windows.net/

Key Learnings

Infrastructure provisioning using Azure CLI

Blob Storage static hosting

Using $web container

CI/CD automation with GitHub Actions

Secure authentication with Service Principals 

Author

Orji Tochukwu Chinedu
Cloud Engineer | DevOps Enthusiast -->