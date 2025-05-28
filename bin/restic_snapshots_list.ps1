. "$PSScriptRoot\restic_variables.ps1"

& $RESTIC_EXE snapshots --verbose -r $RESTIC_REPOSITORY --password-command $RESTIC_PASSWORD_COMMAND $args
