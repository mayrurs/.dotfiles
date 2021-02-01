" Set terminal colors to 256 
set term=screen-256color

" Enable line numbering
set nu

" Make Vim Tab name the current file name
let &titlestring = @%
set title

" Move swap files out of vim directory
set swapfile
set dir=~/tmp

" Remappe escape key 
imap jk <Esc>

set nocompatible              " required
filetype off                  " required
syntax on		" Required for vimwiki

" Initialize Plug-in manager and define plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add Plugins: 
Plugin 'gmarik/Vundle.vim'
Plugin 'jnurmine/Zenburn' "Dark theme
Plugin 'vim-airline/vim-airline' "
Plugin 'vim-airline/vim-airline-themes' 
"Plugin 'christoomey/vim-tmux-navigator'
"Plugin 'benmills/vimux'
Plugin 'vimwiki/vimwiki'
Plugin 'jpalardy/vim-slime'
Plugin 'davidhalter/jedi-vim'

call vundle#end()            " required
filetype plugin indent on    " required

set laststatus=2 " Required for powerline Plugin to work correctly

"Set color scheme
colorscheme zenburn
 
" Enable split view navigation (:vs <filename> h --> horizontal split, :sp <filename> --> vertical split)
set splitbelow
set splitright

"split navigations (Ctrl + vim movements)
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Shortcuts to run console from vim (with vimux plugin)
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Tab settings for Python files 
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ softtabstop=4
    \ shiftwidth=4
    \ textwidth=79
    \ expandtab
    \ autoindent
    \ fileformat=unix

" Tab settings for Markdown and other files
au BufNewFile,BufRead *.js, *.html, *.mk
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

set encoding=utf-8
let python_highlight_all=1
syntax on

" Set vimwiki to use markdown language
let g:vimwiki_list = [{'path': '~/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]
" Ensure vimwiki treats .md files as markdown
au BufRead,BufNewFile *.md set filetype=vimwiki
" Activate spell checking for md files
autocmd BufRead,BufNewFile *.wiki setlocal spell

" Configure vim-slime to work with tmux --> tmux-udacity
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": get(split($TMUX, ","), 0), "target_pane": ":.1"}
let g:slime_python_ipython = 1

