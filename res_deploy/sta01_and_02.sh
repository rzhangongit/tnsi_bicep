# Example of Bicep template to create Storage Accounts and Storage Containers

az deployment group create --confirm-with-what-if \
    --resource-group rg-tnsi-eastus-dev-01 \
    --template-file ../res_modules/storage_account.bicep \
    --parameters @sta_parameters.json 
