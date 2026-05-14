// main.bicep
targetScope = 'subscription' // CRITICAL: This allows the script to create the RG

param location string = 'eastus'
param rgName string = 'rg-healthbot-e8c755'
param botName string = 'healthbot-e8c755'

// 1. Create the Resource Group
resource tgResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: rgName
  location: location
}

// 2. Deploy the Bot into the Resource Group we just created
module botDeployment './healthbot.bicep' = {
  name: 'botDeployment'
  scope: resourceGroup(tgResourceGroup.name) // This tells Bicep to switch context
  params: {
    location: location
    botName: botName
  }
}
