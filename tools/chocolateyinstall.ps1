$regeditPath = 'HKCU:Software\Elantech\SmartPad';
$keyName = 'ScrollControl_Mode'
$backupFileName = 'currentValueScrollControl_Mode.txt'
$regeditKey = (Get-ItemProperty -Path $regeditPath -Name $keyName -ErrorAction SilentlyContinue)
if ($regeditKey) {
  Write-Host "Saving the current value of ${regeditPath}\${keyName} to ${backupFileName}."
  Write-Output $regeditKey.ScrollControl_Mode > $backupFileName
  Write-Host "Enabling ${keyName} for a smooth touchpad scroll on Lenovo s145."
  Set-ItemProperty -Path $regeditPath -Name $keyName -Value 1
}