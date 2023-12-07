# Script to compress C:\Windows\System32\winevt\Logs

# Method 1: To get from Regedit
# $path = (Get-ItemProperty HKLM:\System\CurrentControlSet\Services\Eventlog\Security).File
# $path = ($path -Split 'Security.evtx')[0]

# Method 2: To get env variables
$env_var = $env:SystemRoot
$path = $env_var + '\System32\winevt\Logs'
Get-ChildItem -Path $path | ForEach-Object { compact /C }
