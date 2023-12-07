# Incomplete
# import necessary Assembly
Add-Type -AssemblyName System.Web

$users = @("dummy");
$email = @("abc@abc.com")

# create SamAccountName
$SamAccountName = @()
# [System.Web.Security.Membership]::GeneratePassword(15,4)
$password = ConvertTo-SecureString -String Lolopocho123!!! -AsPlainText -Force
Foreach($i in $users.length){ $inter = $users[$i] -split " ";$san = { $user[$i][0],{$inter[1][0..($inter.length + 1)] -join ""} -join " "} ;$SamAccountName+=$san; New-ADUser -AccountPassword $password -Description Read-Host "Enter Description in CountryCode Company ID CompanyFullName FullName format" -Name & $SamAccountName[$i] -EmailAddress $email[$i] -Path "OU=Users,OU= { Read-Host "Kyndryl IBM CLS" } ,OU=User Accounts, DC= { Read-Host "Enter Domain" },DC=IBMCLS" }

Foreach($i in $users.length){ $inter = $users[$i] -split " ";$san = { $user[$i][0],{$inter[1][0..($inter.length + 1)] -join ""} -join " "} ;$SamAccountName+=$san; New-ADUser -AccountPassword asdhasd -Description { Read-Host "Enter Description in CountryCode Company ID CompanyFullName FullName format" } -Name $SamAccountName[$i] -EmailAddress $email[$i] -Path "OU=Users,OU= { Read-Host "Kyndryl IBM CLS" } ,OU=User Accounts, DC= { Read-Host "Enter Domain" },DC=IBMCLS" }


Foreach($i in $users.length){ Write-Host $users[$i]; $inter = $users[$i] -split " ";$san = { $user[$i][0],{$inter[1][0..($inter.length + 1)] -join ""} -join " "} ;New-ADUser -AccountPassword $password
