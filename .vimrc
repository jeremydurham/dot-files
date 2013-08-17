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

" Whitespace cleanup
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

" Cleanup whitespace with F5
nnoremap <silent> <F5> :call <SID>StripTrailingWhitespaces()<CR>

" Invisibles
nmap <leader>l :set list!<CR>
 
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸\ ,eol:¬
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59