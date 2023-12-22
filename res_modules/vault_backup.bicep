//KB: https://github.com/Azure/azure-quickstart-templates/blob/master/quickstarts/microsoft.dataprotection/backup-vault-basic/main.bicep

@description('Name of the Vault')
param vaultName string

@description('Change Vault Storage Type (not allowed if the vault has registered backups)')
@allowed([
  'LocallyRedundant'
  'GeoRedundant'
  'ZoneRedundant'
])
param vaultStorageRedundancy string = 'GeoRedundant'

@description('Location for all resources.')
param location string = resourceGroup().location

resource backupVault 'Microsoft.DataProtection/BackupVaults@2021-01-01' = {
  name: vaultName
  location: location
  identity: {
    type: 'systemAssigned'
  }
  properties: {
    storageSettings: [
      {
        datastoreType: 'VaultStore'
        type: vaultStorageRedundancy
      }
    ]
  }
}
