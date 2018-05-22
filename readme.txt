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

"pdf splitting and merging
"From https://linuxcommando.blogspot.co.uk/2013/02/splitting-up-is-easy-for-pdf-file.html

sudo apt-get update
sudo apt-get install pdftk

"Then, to make a new pdf with just pages 1, 2, 4, and 5 from the old pdf, do this:

pdftk myoldfile.pdf cat 1 2 4 5 output mynewfile.pdf

"Note that cat and output are special pdftk keywords. cat specifies the operation to perform on the input file. output signals "that what follows is the name of the output pdf file.

"You can specify page ranges like this:

pdftk myoldfile.pdf cat 1-2 4-5 output mynewfile.pdf

"pdftk has a few more tricks in its back pocket. For example, you can specify a burst operation to split each page in the input "file into a separate output file.

pdftk myoldfile.pdf burst 

"By default, the output files are named pg_0001.pdf, pg_0002.pdf, etc.
"pdftk is also capable of merging multiple pdf files into one pdf.

pdftk pg_0001.pdf pg_0002.pdf pg_0004.pdf pg_0005.pdf output mynewfile.pdf 

"That would merge the files corresponding to the first, second, fourth and fifth pages into a single output pdf. 

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
sudo sh -c 'dumpkeys |grep -v cr_Console |loadkeys'
to remove annoying console changing with super and Alt keys
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

