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
" status line at the bottom of vim
Plugin 'vim-airline/vim-airline-themes'
" themes for airline vim
Plugin 'vim-airline/vim-airline'
" tabs
Plugin 'godlygeek/tabular'
" indenting highlighting
Plugin 'nathanaelkane/vim-indent-guides'
" colour!
Plugin 'flazz/vim-colorschemes'
" jedi autocomplete for python?
Plugin 'davidhalter/jedi-vim'
"falcon theme
Plugin 'fenetikm/falcon'
" All of your Plugins must be added before the following line
call vundle#end()            " required

set number
"set spell spelllang=en_gb
"colorscheme synthwave
"colorscheme 0x7A69_dark
"colorscheme mod8
"colorscheme jiks
"colorscheme brogrammer
"colorscheme codeschool
"colorscheme monochrome
"colorscheme inori
"colorscheme iceberg
"colorscheme ironman
"colorscheme itg_flat

"colorscheme madeofcode
"colorscheme mango
"colorscheme mellow
"colorscheme falcon
"colorscheme neutron
"colorscheme neonwave
"colorscheme neverland-darker

"colorscheme nightsky 
"colorscheme neverland2


"colorscheme landscape
"colorscheme inkpot 
colorscheme ir_black 

set t_Co=256

" vim location list
"let g:lopen 2


" ALE
let b:ale_linters = ['prospector', 'pyflakes', 'flake8', 'pylint', 'proselint', 'write-good', 'textlint', 'chktex' ]
let b:ale_fixers = ['yapf', 'isort', 'prettier' ]


let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1

let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"let g:ale_open_list=1
"let g:ale_echo_cursor = 0

"no indenting
"set nocindent
"set nosmartindent
"set noautoindent
"set indentexpr=
"filetype indent off 
"filetype plugin indent off 

let fortran_free_source=1
let fortran_have_tabs=1
let fortran_more_precise=1
let fortran_do_enddo=1

filetype plugin indent on
" show existing tabs with 4 spaces width
set tabstop=4
" when indenting > use 4 spaces 
set shiftwidth=4
" tab inserts 4 spaces
set expandtab

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

" no spell check for asm
autocmd FileType txt setlocal spell
