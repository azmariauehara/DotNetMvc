## Using git hub actions
.Net 6.0
Azure 


### Create azure secrets
az group create --location northeurope --name rg-dotnetmvc

az ad sp create-for-rbac --name githubactions --role contributor --scopes /subscriptions/ae0d5ee9-54ad-466f-9db6-4301e35952b4/resourceGroups/rg-dotnetmvc --sdk-auth

