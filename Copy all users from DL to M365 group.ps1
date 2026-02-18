powershell -executionpolicy bypass -noprofile
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -UserPrincipalName <Username>

$M365DLMailboxes = Get-DistributionGroupMember -identity "<DistributionList>"
$m365group = "<M365Group>"
foreach ($mailbox in $M365DLMailboxes){
     $whosnext = "Adding " + $mailbox
     echo $whosnext
     Add-UnifiedGroupLinks -identity $m365group -linktype Members -links $mailbox -whatif
}
