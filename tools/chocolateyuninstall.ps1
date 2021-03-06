$regeditPath = 'HKCU:Software\Elantech\SmartPad';
$keyName = 'ScrollControl_Mode'
$regeditKey = (Get-ItemProperty -Path $regeditPath -Name $keyName -ErrorAction SilentlyContinue)
if ($regeditKey) {
  Write-Host "Uninstalling the fix..."
  Set-ItemProperty -Path $regeditPath -Name $keyName -Value 0
}