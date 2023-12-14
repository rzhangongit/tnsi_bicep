# This is to create Management Group at the level of underneath the Tenant Root Group.

#!/bin/sh

az deployment tenant create --confirm-with-what-if \   
    --template-file ../res_modules/management_group.bicep \
    --parameters @mg_dev01_parameters.json 
