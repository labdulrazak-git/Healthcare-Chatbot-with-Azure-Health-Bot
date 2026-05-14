// healthbot.bicep
param location string
param botName string

resource healthBot 'Microsoft.HealthBot/healthBots@2020-12-08' = {
  name: botName
  location: location
  sku: {
    name: 'F0'
  }
}
