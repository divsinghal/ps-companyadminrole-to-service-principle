#----------------------------------------------------------- 
# This will prompt you for your tenant's credential 
# You should be able to use your your Azure AD administrative user name 
# (in the admin@tenant.onmicrosoft.com format) 
#----------------------------------------------------------- 
Connect-MsolService 
#----------------------------------------------------------- 
# Replace the Application Name with the name of your 
# Application Service Principal 
#----------------------------------------------------------- 
$displayName ="your app name which you craete in script1.ps1" 
$objectId = (Get-MsolServicePrincipal -SearchString $displayName).ObjectId 
Write-Host $objectId
#----------------------------------------------------------- 
# This will add your Application Service Prinicpal to 
# the Company Administrator role 
#----------------------------------------------------------- 
$roleName = "Company Administrator" 
Add-MsolRoleMember -RoleName $roleName -RoleMemberType ServicePrincipal -RoleMemberObjectId $objectId