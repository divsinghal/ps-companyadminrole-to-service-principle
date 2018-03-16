#Login-AzureRmAccount
$AppHomePage = "http://yoursiteurl"
$ApplicationDIsplayName = "app-name"
$ResourceGroupName ="rg-name"

$adapp = New-AzureRmADApplication -DisplayName $ApplicationDIsplayName -HomePage $AppHomePage -IdentifierUris $AppHomePage 
Write-Host "new application created with application id ->" $adapp.ApplicationId
$sp = New-AzureRmADServicePrincipal -ApplicationId $adapp.ApplicationId 
Write-Host "new service principal craeted with id->" $sp.DisplayName