# restic-windows-easy-scripts/
# Copyright (C) 2025 Danilo Schembri
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.

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
