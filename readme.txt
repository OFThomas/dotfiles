

gnome profile:

" Backup
dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup.txt
" Load settings
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt


