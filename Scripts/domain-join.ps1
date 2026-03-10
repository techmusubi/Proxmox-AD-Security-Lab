# --- 1. GET USER INPUT ---
$octet     = Read-Host "Enter the last digit for the IP (e.g., 62)"
$PCName    = Read-Host "Enter the NEW computer name (e.g., IT2)"
$ipAddress = "10.10.10.$octet"
$gateway   = "10.10.10.1"
$dns       = "10.10.10.10"
$mask      = 24

$domain    = "geeksorg.local"
$user      = "GEEKSORG\Administrator"
$pass      = 'REDACTED'

# --- 2. CHANGE IPv4 SETTINGS ---
Write-Host "Step 1: Setting IP to $ipAddress and DNS to $dns..." -ForegroundColor Cyan
$adapter = Get-NetAdapter | Where-Object { $_.Status -eq "Up" } | Select-Object -First 1

# Apply the Static IP, Gateway, and DNS
New-NetIPAddress -InterfaceIndex $adapter.InterfaceIndex -IPAddress $ipAddress -PrefixLength $mask -DefaultGateway $gateway -Confirm:$false
Set-DnsClientServerAddress -InterfaceIndex $adapter.InterfaceIndex -ServerAddresses $dns

# Refresh the resolver to make sure it sees the DC
ipconfig /flushdns
ipconfig /registerdns

# --- 3. CHANGE PC NAME & JOIN DOMAIN ---
Write-Host "Step 2: Renaming to $PCName and Joining $domain..." -ForegroundColor Cyan

$securePass = ConvertTo-SecureString $pass -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential ($user, $securePass)

# --- 4. THE FINAL HANDSHAKE & RESTART ---
Add-Computer -DomainName $domain -NewName $PCName -Credential $creds -Restart -Force -Verbose