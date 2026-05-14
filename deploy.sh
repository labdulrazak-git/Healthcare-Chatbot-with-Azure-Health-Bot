#!/bin/bash
# 1. Variables
SUFFIX=$(openssl rand -hex 3)
RG="rg-healthbot-$SUFFIX"
LOC="eastus"

# 2. Create the Resource Group
az group create --name $RG --location $LOC

# 3. Register the Provider (Prevents the error you saw in your terminal)
az provider register --namespace Microsoft.HealthBot

# 4. Deploy the Bicep file
echo "🚀 Deploying Health Bot via Bicep..."
az deployment group create \
  --resource-group $RG \
  --template-file main.bicep \
  --query properties.outputs.managementUrl.value