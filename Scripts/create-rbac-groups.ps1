Import-Module ActiveDirectory

$groups = @(
"GG_IT",
"GG_HR",
"GG_FINANCE",
"GG_CUSTOMERSERVICE",
"GG_MANAGEMENT",
"GG_SECURITY"
)

foreach ($group in $groups) {
    New-ADGroup `
        -Name $group `
        -SamAccountName $group `
        -GroupScope Global `
        -GroupCategory Security `
        -Path "OU=Groups,DC=geeksorg,DC=local"
}
