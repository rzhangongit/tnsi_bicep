# Example of Bicep template to create Storage Accounts and Storage Containers
# KB: https://stackoverflow.com/questions/72376257/bicep-template-create-containers-within-a-storage-account

az deployment group create --confirm-with-what-if \
    --resource-group rg-tnsi-eastus-dev-01 \
    --template-file ../res_modules/storage_account.bicep \
    --parameters @sta_parameters.json 
