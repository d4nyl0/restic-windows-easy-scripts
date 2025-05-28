. "$PSScriptRoot\restic_variables.ps1"

foreach ($RESTIC_DIR_SOURCE in $RESTIC_BACKUP_DIRECTORIES_SOURCE) {
	& $RESTIC_EXE backup "$RESTIC_DIR_SOURCE" --verbose -r $RESTIC_REPOSITORY --password-command $RESTIC_PASSWORD_COMMAND $args
}
