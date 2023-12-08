param location string = resourceGroup().location
param virtualNetworkName string
param subnet1Name string
param subnet2Name string
param vnetAddressPrefix string
param subnet1AddressPrefix string
param subnet2AddressPrefix string

@description('The tags to be associated with the resources.')
param tags object = {  
  project: 'tnsi_bicep'
  environment: 'dev'
}

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-04-01' = {
  name: virtualNetworkName
  location: location
  tags: tags
  properties: {
    addressSpace: {
      addressPrefixes: [
        vnetAddressPrefix
      ]
    }
    subnets: [
      {
        name: subnet1Name
        properties: {
          addressPrefix: subnet1AddressPrefix
        }
      }
      {
        name: subnet2Name
        properties: {
          addressPrefix: subnet2AddressPrefix
        }
      }
    ]
  }
}
