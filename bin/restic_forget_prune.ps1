. "$PSScriptRoot\restic_variables.ps1"

& $RESTIC_EXE forget --prune --verbose -r $RESTIC_REPOSITORY --password-command $RESTIC_PASSWORD_COMMAND $RESTIC_FORGET_RETENTION_OPTIONS $args
