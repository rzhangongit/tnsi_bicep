# this template is to create a managed user-assigned identity with Reader role permissions assigned.
# template example: https://github.com/Azure/azure-quickstart-templates/tree/master/modules/Microsoft.ManagedIdentity/user-assigned-identity-role-assignment/1.0
# the parameters file uses a Azure built-in Reader role 


az deployment group create --confirm-with-what-if \
    --resource-group 'rg-tnsi-eastus-dev-01' \
    --template-file ../res_modules/managed_identity.bicep \
    --parameters @managed_id_params.json 
