. "$PSScriptRoot\restic_variables.ps1"

$command = $args[0]
$flags = $args[1..$args.length]

& $RESTIC_EXE $command --verbose -r $RESTIC_REPOSITORY --password-command $RESTIC_PASSWORD_COMMAND $flags