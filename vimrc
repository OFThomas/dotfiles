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
let b:ale_linters = ['pyflakes', 'flake8', 'pylint', 'proselint', 'write-good', 'textlint', 'prettier']
let g:ale_fixers = ['prettier', 'eslint', 'autopep8']
let b:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 1



"syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1 
"let g:syntastic_auto_loc_list = 1 
"let g:syntastic_check_on_open = 1 
"let g:syntastic_check_on_wq = 0 

"let g:syntastic_python_python_exec='python3'


"let g:syntastic_quiet_messages = {
        \ "!level":  "errors",
        \ "type":    "style", }

"no indenting
set nocindent
set nosmartindent
set noautoindent
set indentexpr=
"filetype indent off 
"filetype plugin indent off 


" This is the default extra key bindings
"let g:fzf_action = {
"  \ 'ctrl-t': 'tab split',
"  \ 'ctrl-x': 'split',
"  \ 'ctrl-v': 'vsplit' }

" Default fzf layout
" - down / up / left / right
let g:fzf_layout = { 'down': '~40%' }

" In Neovim, you can set up fzf window using a Vim command
"let g:fzf_layout = { 'window': 'enew' }
"let g:fzf_layout = { 'window': '-tabnew' }
"let g:fzf_layout = { 'window': '10split enew' }

 " CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" [[B]Commits] Customize the options used by 'git log':
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" [Tags] Command to generate tags file
let g:fzf_tags_command = 'ctags -R'

" [Commands] --expect expression for directly executing the command
let g:fzf_commands_expect = 'alt-enter,ctrl-x'


"
"Key maps

map <C-_> :NERDTreeToggle<CR>


"Auto run

"autocmd vimenter * NERDTree
" if empty vim window is opened 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"close vim if window manager is only window left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif




