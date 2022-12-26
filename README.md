## Using git hub actions
.Net 6.0
Azure 


### Create azure secrets
```
az group create --location northeurope --name rg_dotnetmvc

az ad sp create-for-rbac --name secretdotnetmvc --role contributor --scopes /subscriptions/ae0d5ee9-54ad-466f-9db6-4301e35952b4/resourceGroups/rg_dotnetmvc --sdk-auth
```
Result:
```
{
  "clientId": "3b239d53-8b1a-4c4f-b2ed-3524cab522e4",
  "clientSecret": "k4pKAbx1mfuXWzN2N8ny.nLnIdhkLuUQad",
  "subscriptionId": "ae0d5ee9-54ad-466f-9db6-4301e35952b4",
  "tenantId": "85a860b5-44c8-4411-bf0b-130ffa676839",
  "activeDirectoryEndpointUrl": "https://login.microsoftonline.com",
  "resourceManagerEndpointUrl": "https://management.azure.com/",
  "activeDirectoryGraphResourceId": "https://graph.windows.net/",
  "sqlManagementEndpointUrl": "https://management.core.windows.net:8443/",
  "galleryEndpointUrl": "https://gallery.azure.com/",
  "managementEndpointUrl": "https://management.core.windows.net/"
}
```

