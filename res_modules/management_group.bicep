@description('An array of objects, each representing the configuration for a Management Group to be deployed.')
param managementGroups array = []

// targetScope = 'tenant'

var managementGroupIds = [for managementGroup in managementGroups: {
  id: resourceId('Microsoft.Management/managementGroups', managementGroup.name)
}]

resource newMG 'Microsoft.Management/managementGroups@2021-04-01' = [for managementGroup in managementGroups: {
  scope: tenant()
  name: managementGroup.name
  properties: {
    details: {
      parent: {
        id: managementGroup.parent_mg_id
      }
    }
  }
}]

output managementGroupNames array = managementGroups
output managementGroupIds array = managementGroupIds
