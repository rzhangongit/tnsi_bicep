@description('An array of objects, each representing the configuration for a Storage Account to be deployed.')
param storageAccounts array = []

@description('The tags to be associated with the resources.')
param tags object = {  
  project: 'tnsi_bicep'
  environment: 'dev'
}

resource createStorageAccounts 'Microsoft.Storage/storageAccounts@2021-06-01' = [for storageAccount in storageAccounts: {
  name: storageAccount.name
  location: storageAccount.location
  kind: '${storageAccount.kind}'
  sku: {
    name: '${storageAccount.performance_tier}_${storageAccount.redundancy}'
  }
  tags: tags
}]
