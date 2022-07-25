# set-01.ps1	221225 Christmas Day 2021
#
# Some PSHell and MSGraph stuff
# Added this 220725 to vet the git remote
#--------------------------------------------------------------------

# Connect as jh.pauley@outlook.com into curvic.io

<#$_Environment		= "AzureCloud"
$_TenantType		= "AAD"
$_TenantId			= "d966aebf-5d1d-4444-bb28-cc4f3f524b75" # The Tenant ID is synonymous with Organization ID is synonymous with Management Group ID
$_SubscriptionId	= "96d27511-3a01-45b4-a6fe-b69d01ae62ad"
$_SubscriptionName	= "curvic.io.s"
#>

# Connect as james.h.pauley2 into USACE Azure IL45 Cloud

$_Environment		= "AzureUSGovernment"
$_TenantType		= "AAD"
$_TenantId			= "fc4d76ba-f17c-4c50-b9a7-8f3163d27582" # The Tenant ID is synonymous with Organization ID is synonymous with Management Group ID
$_SubscriptionId	= "2e904e96-8207-4b76-bd36-d1e58766bec5"
$_SubscriptionName	= "Azure Government Enterprise"

#

# First Breakfast
Connect-AzAccount -EnvironmentName $_Environment -TenantId $_TenantId
Connect-AzureAD -AzureEnvironmentName $_Environment -TenantId $_TenantId
Set-AzContext -Subscription $_SubscriptionId -Tenant $_TenantId

# Trust but verify
Get-AzContext

Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"
Get-MgUser

# There are currently 2 versions of Microsoft Graph REST APIs - v1.0 and beta, we're being brave..
Select-MgProfile -Name "beta"

# Clean the kitchen
Disconnect-MgGraph