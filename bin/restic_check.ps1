. "$PSScriptRoot\restic_variables.ps1"

& $RESTIC_EXE check --verbose -r $RESTIC_REPOSITORY --password-command $RESTIC_PASSWORD_COMMAND $args
