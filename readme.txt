

gnome profile:

" Backup
dconf dump /org/gnome/terminal/ > gnome_terminal_settings_backup.txt
" Load settings
dconf load /org/gnome/terminal/ < gnome_terminal_settings_backup.txt

" Vim

Welcome to the CDT wiki!

wget "https://raw.githubusercontent.com/TroyFletcher/vim-colors-synthwave/master/colors/synthwave.vim"

~/.vimrc

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'lervag/vimtex'
Plug 'vim-syntastic/syntastic'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0 

autocmd FileType tex set spell
setglobal spell spelllang=en_gb

colorscheme synthwave



install with 
:PlugInstall

Git
git config credential.helper store

Useful (only in emergency) Linux commands and settings.

Installed Desktop Enviros ls /usr/share/xsessions/



!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
sudo sh -c 'dumpkeys |grep -v cr_Console |loadkeys'
to remove annoying console changing with super and Alt keys
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

