
#!/bin/sh

az deployment sub create \
  --name resourceGroupName \
  --location eastus \
  # update the path to the template-file depending on the directory where you run the shell script.
  --template-file resource_group.bicep \
  --parameters resourceGroupName='rg-tnsi-eastus-dev-01' resourceGroupLocation='eastus'

