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

$RESTIC_SCRIPTS_DIR = "$PSScriptRoot"
$RESTIC_SECRET_FILE = "$PSScriptRoot\..\secrets\restic_pwd_encrypted.txt"
$RESTIC_EXE = "C:\<path-to-restic>\restic\restic.exe"
$RESTIC_REPOSITORY = "$HOME\<path-for-backup-storage>\restic-repo"
$RESTIC_PASSWORD_COMMAND = "powershell -Command '$RESTIC_SCRIPTS_DIR\password_decrypt.ps1 $RESTIC_SECRET_FILE'"

# No trailing slashes on this array!
$RESTIC_BACKUP_DIRECTORIES_SOURCE = @(
	"$HOME\Desktop",
	"$HOME\Documents",
	"$HOME\bin",
	"$HOME\AppData\Roaming",
	"$HOME\restic"
)

$RESTIC_FORGET_RETENTION_OPTIONS = @(
	"--keep-daily", "7",
	"--keep-weekly", "4",
	"--keep-monthly", "12",
	"--keep-yearly", "2"
)

if (-not(Test-Path -Path $RESTIC_SECRET_FILE -PathType Leaf)) {
	Write-Host "The file [$RESTIC_SECRET_FILE] doesn't exist."
	break
}
