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
set incsearch

filetype indent plugin on
syntax on

" Shortcuts
nmap <F8> :TagbarToggle<CR>
nnoremap \ :Ag<SPACE>
noremap <leader>s :source ~/.vimrc<CR>

" Copy and Paste
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

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
Plug 'fatih/vim-go'
Plug 'majutsushi/tagbar'
Plug 'flazz/vim-colorschemes'
Plug 'vim-syntastic/syntastic'
Plug 'ervandew/supertab'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
call plug#end()

" Color scheme
colorscheme twilight256

" Split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tabs
set showtabline=2

" Ack
let g:ackprg = 'ag --vimgrep'

" Syntastic
let g:syntastic_enable_signs = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_aggregate_errors = 1

" Go checker
let g:syntastic_go_checkers = ['go', 'golint', 'govet']

" Ruby checker
let g:syntastic_ruby_checkers = ['mri']

" Javascript checker
let g:syntastic_check_on_open = 1
let g:syntastic_javascript_checkers = ['eslint']

" Vim-go
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"

" NERDTree
map <C-n> :NERDTreeToggle<CR>

" Fuzzy-find with fzf
map <C-p> :Files<cr>
nmap <C-p> :Files<cr>

" View commits in fzf
nmap <Leader>c :Commits<cr>

" trim Whitespace on Save
autocmd BufWritePre * :%s/\s\+$//e

" reload file if it was changed outside
set autoread
autocmd FocusGained * checktime

