# Project repository name: tnsi_bicep
# Project purpose: evaluating Bicep

# Example to create a Resource Group, run the following CLI
az deployment sub create \
  --name resourceGroupName \
  --location eastus \
  --template-file resource_group.bicep \
  --parameters resourceGroupName=demoResourceGroup resourceGroupLocation=eastus

