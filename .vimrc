" Remappe escape key 
imap jk <Esc>

" Set terminal colors to 256 
set term=screen-256color

" Enable line numbering
set nu

" Make Vim Tab name the current file name
let &titlestring = @%
set title

set nocompatible              " required
filetype off                  " required
syntax on		" Required for vimwiki

" Initialize Plug-in manager and define plugins
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Add Plugins: 
Plugin 'gmarik/Vundle.vim'
Plugin 'jnurmine/Zenburn' "Required for: Dark theme
Plugin 'vim-airline/vim-airline' "Required for: Status line
Plugin 'vim-airline/vim-airline-themes'  "Required for: Theme status line
Plugin 'tpope/vim-fugitive'  "Required for: Showing git information in status line 
Plugin 'vimwiki/vimwiki'

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

" Set vimwiki to use markdown language
let g:vimwiki_list = [{'path': '~/vimwiki/',
                       \ 'syntax': 'markdown', 'ext': '.md'}]
" Ensure vimwiki treats .md files as markdown
au BufRead,BufNewFile *.md set filetype=vimwiki
" Activate spell checking for md files
autocmd BufRead,BufNewFile *.wiki setlocal spell

