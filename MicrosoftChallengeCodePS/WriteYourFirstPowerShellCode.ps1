# instead of prompting the user, I used Get-Command -Noun *date* -Verb Get*, pipelined with Get-Member to get member then used .Date to get just date
$Date = (Get-Date).Date
$Name = Read-Host -Prompt "Please provde your name"

Write-host "Today's Date is $Date"
Write-Host "Today is the day $Name began a powershell programming journey"
