az deployment group create --confirm-with-what-if \
    --resource-group 'rg-tnsi-eastus-dev-01' \
    --template-file ../res_modules/vault_backup.bicep \
    --parameters @bk_vault_dev01_param.json
