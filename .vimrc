" Basic Configuration
set nocompatible
set ruler
set autoindent
set smartindent
set foldmethod=marker
set wildmenu
set visualbell
set formatoptions=cqrt
syntax on
filetype plugin indent on
set hlsearch
set incsearch
set nu
set ignorecase
set smartcase
set shiftwidth=2
set softtabstop=2
set expandtab
set nobackup

" Pathogen
execute pathogen#infect()

" ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" NERDTree
autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
