$di = Get-DisplayInfo | Where-Object { $_.Primary -eq $false }

$lines = $di | Measure-Object
if ($lines.Count -ne 1) {
    throw 'More than 1 non-primary monitors are present'
}

'Setting up {0} as a primary monitor' -f ($di | Select -ExpandProperty "DisplayName")

Get-DisplayConfig | Set-DisplayPrimary -DisplayId ($di | Select -ExpandProperty "DisplayId") | Use-DisplayConfig
