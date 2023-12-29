az deployment group create --confirm-with-what-if \
    --resource-group 'rg-tnsi-eastus-dev-01' \
    --template-file ../res_modules/analysis_service.bicep \
    --parameters @analysis_service_params.json
