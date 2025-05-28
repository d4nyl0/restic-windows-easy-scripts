# Inspired to https://4sysops.com/archives/powershell-credentials-how-to-encrypt-a-password/

$pwdfile = $args[0]
$flags = $args[1..$args.length]

if (Test-Path -Path $pwdfile) {
    Write-Error "Error: file '$pwdfile' already exist. For your security your file won't be overwritten."
    exit 1
}

$SecureString = Read-Host -Prompt "Please enter the password to encrypt" -AsSecureString
$EncryptedPW = ConvertFrom-SecureString -SecureString $SecureString
Set-Content -Path "$pwdfile" -Value $EncryptedPW
