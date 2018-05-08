if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'lervag/vimtex'
Plug 'vim-syntastic/syntastic'
Plug 'maxboisvert/vim-simple-complete'
Plug 'tpope/vim-sensible'
" List ends here. Plugins become visible to Vim after this call.
call plug#end()

set number
set spell spelllang=en_gb
colorscheme synthwave

"syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1 
let g:syntastic_auto_loc_list = 1 
let g:syntastic_check_on_open = 1 
let g:syntastic_check_on_wq = 0 

let g:syntastic_quiet_messages = {
        \ "!level":  "errors",
        \ "type":    "style", }

"no indenting
set nocindent
set nosmartindent
set noautoindent
set indentexpr=
filetype indent off 
filetype plugin indent off 
