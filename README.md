# Get-AD-User-Info
Retrieving user info from Active Directory

You can retrieve anything (almost anything) from Active Directory as long as you have access

I recommend you become familiar with the attributes associated with users. The following line will populate everything assigned to the account in Active Directory:
Get-ADUser <username> -properties *

