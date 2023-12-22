az deployment group create --confirm-with-what-if \
    --resource-group 'rg-tnsi-eastus-dev-01' \
    --template-file ../res_modules/vault_recovery_service.bicep \
    --parameters @rs_vault_dev01_params.json 
