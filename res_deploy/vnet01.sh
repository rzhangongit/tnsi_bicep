#!/bin/sh
az deployment group create \
  --resource-group 'rg-tnsi-eastus-dev-01' \
  --template-file vnet.bicep \
  --parameters virtualNetworkName='vnet-tnsi-eastus-01' subnet1Name='snet-tnsi-eastus-01' subnet2Name=snet-tnsi-eastus-02 \
  --parameters vnetAddressPrefix='10.100.0.0/16' subnet1AddressPrefix='10.100.0.0/24' subnet2AddressPrefix='10.100.1.0/24'
