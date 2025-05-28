. "$PSScriptRoot\restic_variables.ps1"

& $RESTIC_EXE init --verbose -r $RESTIC_REPOSITORY --password-command $RESTIC_PASSWORD_COMMAND $args
