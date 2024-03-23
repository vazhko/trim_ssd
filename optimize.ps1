#Get-VM
#Push-Location $PSScriptRoot
#Write-Host CurrentDirectory $CurDir
$scriptpath = $MyInvocation.MyCommand.Path
$dir = Split-Path $scriptpath
Write-host "My directory is $dir"
Stop-VM OMV-HV
diskpart /s $dir\on.txt
defrag d:  /Optimize /Retrim /Verbose
diskpart /s $dir\off.txt
Start-VM OMV-HV

Pause