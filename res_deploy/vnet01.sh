#!/bin/sh

az deployment group create \
  --resource-group resourceGroupName \
  # --location eastus \
  # --location resourceGroup().location \
  # update the path to the template-file depending on the directory where you run the shell script.
  # the following line means running the script from the directory where the .sh file is located.
  --template-file ~/repos/tnsi_bicep/res_modules/vnet.bicep \
  --parameters resourceGroupName='rg-tnsi-eastus-dev-01' virtualNetworkName = 'vnet-tnsi-eastus-01' subnet1Name = 'snet-tnsi-eastus-01' \
               subnet2Name = snet-tnsi-eastus-02 VNetAddressPrefix = '10.100.0.0/16' subnet1AddressPrefix = '10.100.0.0/24' \
               subnet2AddressPrefix = '10.100.1.0/24'
