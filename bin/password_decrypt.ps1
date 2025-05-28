# Inspired to https://4sysops.com/archives/powershell-credentials-how-to-encrypt-a-password/

$pwdfile = $args[0]
$flags = $args[1..$args.length]

$EncryptedPW = Get-Content -Path "$pwdfile"
$SecureString = ConvertTo-SecureString -String $EncryptedPW
$Credentials = New-Object System.Management.Automation.PSCredential "User", $SecureString
$Credentials.GetNetworkCredential().Password