set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Declare the list of plugins.
" "latex
Plugin 'lervag/vimtex' 
"Plugin 'vim-syntastic/syntastic'

Plugin 'maxboisvert/vim-simple-complete'
Plugin 'tpope/vim-sensible'
" fuzzy file search
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'
" file dir in vim
Plugin 'scrooloose/nerdtree'
" ALE
Plugin 'w0rp/ale'
" All of your Plugins must be added before the following line
call vundle#end()            " required

set number
set spell spelllang=en_gb
colorscheme synthwave

" ALE
let b:ale_linters = ['prospector', 'pyflakes', 'flake8', 'pylint', 'proselint', 'write-good', 'textlint' ]
let b:ale_fixers = ['yapf', 'isort', 'prettier' ]


let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1
"let g:ale_list_window_size = 5

"let g:ale_set_loclist = 0
"let g:ale_set_quickfix = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

"let g:ale_echo_cursor = 0

"no indenting
"set nocindent
"set nosmartindent
"set noautoindent
"set indentexpr=
"filetype indent off 
"filetype plugin indent off 


"
"Key maps

map <C-_> :NERDTreeToggle<CR>
set clipboard=unnamedplus

"Auto run

"autocmd vimenter * NERDTree
" if empty vim window is opened 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"close vim if window manager is only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
