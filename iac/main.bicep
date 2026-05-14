// Professional Bicep template for Health Bot deployment
param location string = resourceGroup().location
param botName string = 'healthbot-${uniqueString(resourceGroup().id)}'

@allowed([
  'F0'
  'S1'
])
param sku string = 'F0'

resource healthBot 'Microsoft.HealthBot/healthBots@2020-12-08' = {
  name: botName
  location: location
  sku: {
    name: sku
  }
  properties: {}
  tags: {
    environment: 'demo'
    purpose: 'healthcare-chatbot'
    framework: 'well-architected'
  }
}

output managementPortalUrl string = healthBot.properties.botManagementPortalLink
