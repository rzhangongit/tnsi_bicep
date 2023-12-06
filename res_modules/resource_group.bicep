targetScope = 'subscription'    // Resource group must be deployed under 'subscription' scope

param resourceGroupName string
param resourceGroupLocation string

resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: resourceGroupName
  location: resourceGroupLocation
}
