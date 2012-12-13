# Aliases
alias cu='cucumber'
alias r='rails'
alias ra='rake'
alias g='git'
alias c='cd'
alias l='ls'
alias gs='git status'
alias gp='git push'
alias gc='git commit' 
alias gca='git commit -a'
alias ga='git add'
alias gco='git checkout'
alias gb='git branch'
alias gm='git merge'
alias gd='git diff'
alias v='vim'
alias sb='source ~/.bashrc'

# Colors
export CLICOLOR=1

# Editor
export EDITOR=vim

# GC tuning
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# Git
source ~/.git-prompt.sh
source ~/.git-completion.sh

# Prompt
PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '

# RVM
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Crashlytics specific
if [ -f ~/.cls_bashrc ]; then 
  source ~/.cls_bashrc
fi
