@description('An array of objects, each representing the configuration for a Management Group to be deployed.')
param managementGroups array = []

targetScope = 'managementGroup'

var managementGroupIds = [for mgmtgroup in managementGroups: {
  id: resourceId('Microsoft.Management/managementGroups', mgmtgroup.name)
}]

resource newMG 'Microsoft.Management/managementGroups@2021-04-01' = [for mgmtgroup in managementGroups: {
  scope: tenant()
  name: mgmtgroup.name
  properties: {}
}]

output managementGroupNames array = managementGroups
output managementGroupIds array = managementGroupIds
