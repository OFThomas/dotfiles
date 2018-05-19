#gnome profile:

" Backup
dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup.txt
" Load settings
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt

git config credential.helper store

Useful (only in emergency) Linux commands and settings.

Installed Desktop Enviros ls /usr/share/xsessions/

add to ~/.bashrc
screenfetch

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
sudo sh -c 'dumpkeys |grep -v cr_Console |loadkeys'
to remove annoying console changing with super and Alt keys
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

