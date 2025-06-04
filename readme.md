# restic easy scripts for Windows

TL;DR

How to start with this package:

1. clone this repository inside your machine (a good location is under
   $HOME\restic)
2. run script "bin\password_encrypt.ps1 secrets\restic_pwd_encrypted.txt"
   (or any name you like) to create your password for repository; it will be
   saved encrypted on disk
3. change bin\restic_variables.ps1 according to your needs

  - $RESTIC_SECRET_FILE should point to your restic_pwd_encrypted.txt file
  - $RESTIC_EXE should point to restic.exe on your machine
  - $RESTIC_REPOSITORY should point to location where you want restic store
    backup data
  - $RESTIC_BACKUP_DIRECTORIES_SOURCE points to all directories you want restic
    to backup (No trailing slashes!)
  - $RESTIC_FORGET_RETENTION_OPTIONS adjust it to your retention policy
	
4. run script bin\restic_init.ps1
5. every day, instead of manually powering off machine, run script
   bin\data_backup+poweroff.ps1

All other scripts are shortcuts to specific restic commands.

Please, feel free to modify/add features.

## Known problems and resolution

Spaces in the path of *restic scripts* creates problems.

In the case you can't change the path where restic scripts reside, you can
create a symbolic link with `mklink` in `cmd.exe`:

```
mklink /D L:\path\without\spaces "L:\path with spaces"
```
