@description('An array of objects, each representing the configuration for a Log Analytics workspace to be deployed.')
param workspaces array = []

@description('The tags to be associated with the resources.')
param tags object = {  
  project: 'tnsi_bicep'
  environment: 'dev'
}

var workspaceIds = [for workspace in workspaces: {
  id: resourceId('Microsoft.OperationalInsights/workspaces', workspace.name)
}]

resource law 'Microsoft.OperationalInsights/workspaces@2022-10-01' = [for workspace in workspaces: {
  name: workspace.name
  location: workspace.location
  tags: tags 
}]

output workspaceIds array = workspaceIds
