" Remap leader
let mapleader = "\<Space>"

set nocompatible
set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set ruler
set showcmd
set incsearch
set laststatus=2
set autowrite
set ignorecase
set smartcase
set autoindent
set smartindent
set visualbell
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab
set textwidth=100
set colorcolumn=+1
set number
set numberwidth=5
set hls
filetype indent plugin on
syntax on

" Shortcuts
nnoremap <Leader>w :w<CR>
map <leader>s :source ~/.vimrc<CR>

" Plugins
call plug#begin('~/.vim/bundle/')
Plug 'ntpeters/vim-better-whitespace'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
call plug#end()

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Ack
let g:ackprg = 'ag --vimgrep'

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Fuzzy-find with fzf
map <C-p> :Files<cr>
nmap <C-p> :Files<cr>

" " View commits in fzf
nmap <Leader>c :Commits<cr>
