@description('An array of objects, each representing the configuration for a Management Group to be deployed.')
param managementGroups array = []

targetScope = 'tenant'

var managementGroupIds = [for mgmtgroup in managementGroups: {
  id: resourceId('Microsoft.Management/managementGroups', mgmtgroup.name)
}]

resource newMG 'Microsoft.Management/managementGroups@2021-04-01' = [for mgmtgroup in managementGroups: {
  scope: tenant()
  name: mgmtgroup.name
  properties: {
    details: {
      parent: {
        id: mgmtgroup.parent_mg_id
      }
    }    
  }  
}]

output managementGroupIds array = managementGroupIds
