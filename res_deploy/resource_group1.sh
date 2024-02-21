
#!/bin/sh

az deployment sub create \
  --name resourceGroupName \
  --location eastus \
  --template-file ../res_modules/resource_group.bicep \
  --parameters resourceGroupName='rg-tnsi-eastus-dev-01' resourceGroupLocation='eastus'

