[CmdletBinding()]
param
    (
        [parameter(Mandatory=$true)][String]$file
        
    )

$json = Get-Content $file

$data = ConvertFrom-Json $json

$ip = $data.ipAddress #change to desired JSON object

Write-Output $ip | Out-File file.txt
