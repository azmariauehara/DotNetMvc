$GitBashPath = "D:\Projects\AZ-400\DotNetMvc"

#Create a resource group
New-AzResourceGroup -Location northeurope -name rglabiac

#Deploy simple template creating a storage account
New-AzResourceGroupDeployment -ResourceGroupName rglabiac `
    -TemplateFile "$GitBashPath\armtemplates\storageaccount.json" `
    -TemplateParameterFile "$GitBashPath\armtemplates\storageaccount.param.json"

New-AzResourceGroupDeployment -ResourceGroupName rglabiac `
    -TemplateFile "$GitBashPath\armtemplates\storageaccount.json" `
    -TemplateParameterFile "$GitBashPath\armtemplates\StorageAccount.param.json" `
    -StorageAccountSku 'Standard_GRS'

New-AzResourceGroupDeployment -ResourceGroupName rglabiac `
    -TemplateFile "$GitBashPath\armtemplates\network.json" `
    -TemplateParameterFile "$GitBashPath\armtemplates\network.param.json" 

#To process with delete the previous
New-AzResourceGroupDeployment -ResourceGroupName rglabiac `
    -TemplateFile "$GitBashPath\armtemplates\networksadvanced.json" `
    -Mode Complete

# Using nested templates
New-AzResourceGroupDeployment -ResourceGroupName rglabiac `
    -TemplateFile "$GitBashPath\armtemplates\storageaccountnested.json" `
    -TemplateParameterFile "$GitBashPath\armtemplates\storageaccount.param.json"

# Using linked templates
New-AzResourceGroupDeployment -ResourceGroupName rglabsasblob `
    -TemplateFile "$GitBashPath\armtemplates\storageaccountlinked.json" `
    -TemplateParameterFile "$GitBashPath\armtemplates\storageaccountlinked.param.json"


#Looking at a secret
New-AzResourceGroupDeployment -ResourceGroupName rglabkeyvault `
    -TemplateFile "D:\Projects\AZ-400\DotNetMvc\armtemplates\keyvault.json" `
    -TemplateParameterFile "D:\Projects\AZ-400\DotNetMvc\armtemplates\keyvault.param.json"

#Create a full VM
New-AzResourceGroupDeployment -ResourceGroupName rglabvm `
    -TemplateFile "D:\Projects\AZ-400\DotNetMvc\armtemplates\vmwindows.json" `
    -TemplateParameterFile "D:\Projects\AZ-400\DotNetMvc\armtemplates\vmwindows.param.json"
#Once deployed try and connect with a domain cred via aka.ms/bastionhost! Don't need domain as part of name, just John for me!

D:\Projects\AZ-400\DotNetMvc\armtemplates\keyvault.json