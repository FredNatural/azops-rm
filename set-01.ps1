# set-01.ps1	221225 Christmas Day 2021
#
# Some PSHell and MSGraph stuff
#--------------------------------------------------------------------

$_AZMGI.ID		= "d966aebf-5d1d-4444-bb28-cc4f3f524b75"
$_AZSUB.ID		= "96d27511-3a01-45b4-a6fe-b69d01ae62ad"
$_AZSUB.NAME	= "curvic"
$_AADTENANT.ID	= "d966aebf-5d1d-4444-bb28-cc4f3f524b75" # The Tenant ID is synonomous with Organization ID
$_AADTENANT.TYPE= "AAD"


Connect-MgGraph -Scopes "User.Read.All","Group.ReadWrite.All"
Get-MgUser
# It works
Select-MgProfile -Name "beta"
Disconnect-MgGraph