"basic behavior settings
set nocompatible	"turn on goodies
set ruler		"show ruler always
set showcmd 		"show incomplete commands
set visualbell		"stop that infernal beeping!
set wildmenu		"show possible completions in status line	
set autoindent		"indent automatically
set smartindent		"indent code nicely
set foldmethod=marker	"marker to indicate folds
set formatoptions=cqrt  "allow formatting while maintaining comments
syntax on		"syntax highlighting on
set nohlsearch		"turn off highlight search feature
set nostartofline	"keep the cursor steady while jumping lines
set backspace=2		"allow backing over end of lines
set nobackup		"stop the madness with ~ files everywhere
set expandtab		"Convert tabs to spaces
set softtabstop=4	"So backspace works with tabs converted

filetype plugin indent on	"allow automatic file type detection
autocmd BufRead .followup,.article*,.letter*,*/tmp/mutt* set fo=tcq2 comments=n:>,n::,n:»,n:],fb:- tw=72

"---------------------------------------------
"my stuff
"
set background=light

set shiftwidth=4
set tabstop=4

" Helpful mail stuff
" Snip
vmap    ,sp     c[-- snip --]<Return><Esc>
vmap    ,el     c[...]<Esc>
" Begin editing
nmap    ,e      1Gi<Return><Up>
" Reformat paragraph
nmap    ,f      gqip
