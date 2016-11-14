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
filetype indent plugin on
syntax on

" Shortcuts
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>w :w<CR>
map <leader>s :source ~/.vimrc<CR>

" Plugins
call plug#begin('~/.vim/bundle/')
Plug 'ntpeters/vim-better-whitespace'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'tpope/vim-fugitive'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mileszs/ack.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'Raimondi/delimitMate'
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

" CtrlP
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  if !exists(":Ag")
    command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
    nnoremap \ :Ag<SPACE>
  endif
endif
