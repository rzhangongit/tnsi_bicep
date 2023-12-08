#kb deploy with parameter file: https://www.jorgebernhardt.com/bicep-azure-log-analytics-workspace/
#kb deploy with what-if: ttps://learn.microsoft.com/en-us/azure/azure-resource-manager/templates/deploy-what-if?tabs=azure-powershell

# the --template-file line below is to run the .sh file in the directory of "~/repos/tnsi_bicep/res_deploy"
# update the --template-file path dependih on the folder structure and in which dirctory you run the .sh file
 
#!/bin/sh

# az deployment group what-if \
az deployment group create --confirm-with-what-if \
    --resource-group rg-tnsi-eastus-dev-01 \
    --template-file ../res_modules/law.bicep \
    --parameters @law_parameters.json 
