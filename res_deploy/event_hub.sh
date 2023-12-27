az deployment group create --confirm-with-what-if \
    --resource-group 'rg-tnsi-eastus-dev-01' \
    --template-file ../res_modules/event_hub.bicep \
    --parameters @event_hub_params.json 
