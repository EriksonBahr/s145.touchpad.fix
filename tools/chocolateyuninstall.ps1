$regeditPath = 'HKCU:Software\Elantech\SmartPad';
$keyName = 'ScrollControl_Mode'
$backupFileName = 'currentValueScrollControl_Mode.txt'
$regeditKey = (Get-ItemProperty -Path $regeditPath -Name $keyName -ErrorAction SilentlyContinue)
if ($regeditKey) {
  $currentValue = Get-Content $backupFileName
  Write-Host "Restoring the value of ${currentValue} to the registry ${regeditPath}\${keyName}."
  Set-ItemProperty -Path $regeditPath -Name $keyName -Value $currentValue
}