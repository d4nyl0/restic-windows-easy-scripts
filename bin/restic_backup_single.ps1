. "$PSScriptRoot\restic_variables.ps1"

$backup_path = $args[0]
$flags = $args[1..$args.length]

& $RESTIC_EXE backup "$backup_path" --verbose -r $RESTIC_REPOSITORY --password-command $RESTIC_PASSWORD_COMMAND $flags
