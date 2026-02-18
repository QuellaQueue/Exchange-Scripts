# Exchange-Scripts

The files here are all generalized versions of scripts I use often for exchange online. For all of them except for a small handful, powershell's execution policy will be need to be set to bypass, and Exchange Online's module will need to be imported first.

This is what the above looks like in pratice.
powershell -executionpolicy bypass -noprofile
Import-Module ExchangeOnlineManagement
Connect-ExchangeOnline -UserPrincipalName <Username>
