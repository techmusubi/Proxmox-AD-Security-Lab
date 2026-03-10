Import-Module ActiveDirectory

Add-ADGroupMember -Identity "GG_IT" -Members "admin","joe"

Add-ADGroupMember -Identity "GG_HR" -Members "sarah","valerie"

Add-ADGroupMember -Identity "GG_FINANCE" -Members "bob","kelly"

Add-ADGroupMember -Identity "GG_CUSTOMERSERVICE" -Members "dolly","debra"

Add-ADGroupMember -Identity "GG_MANAGEMENT" -Members "shane","roy"

Add-ADGroupMember -Identity "GG_SECURITY" -Members "james"
