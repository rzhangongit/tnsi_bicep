#KB: https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.keyvault/key-vault-create/main.bicep

az deployment group create --confirm-with-what-if \
    --resource-group 'rg-tnsi-eastus-dev-01' \
    --template-file ../res_modules/key_vault.bicep \
    --parameters @kv_dev_01_params.json 
