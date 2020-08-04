$connection = Get-AutomationConnection -Name "hpedevopsazureautomation-connection"
$connectionResult = Connect-AzAccount `
-ServicePrincipal `
-Tenant $connection.TenantID `
-ApplicationId $connection.ApplicationID `
-CertificateThumbprint $connection.CertificateThumbprint
"Login successful.."
New-AzResourceGroup -Name Trg -Location westeurope