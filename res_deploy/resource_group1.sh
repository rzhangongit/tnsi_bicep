
#!/bin/sh

az deployment sub create \
  --name resourceGroupName \
  --location eastus \
  --template-file resource_group.bicep \
  --parameters resourceGroupName='rg-tnsi-eastus-dev-01' resourceGroupLocation='eastus'

