$regeditPath = 'HKCU:Software\Elantech\SmartPad';
$keyName = 'ScrollControl_Mode'
$regeditKey = (Get-ItemProperty -Path $regeditPath -Name $keyName -ErrorAction SilentlyContinue)
if ($regeditKey) {
  Write-Host "Installing the fix by enabling ${keyName} for a smooth touchpad scroll on Lenovo s145."
  Set-ItemProperty -Path $regeditPath -Name $keyName -Value 1
}