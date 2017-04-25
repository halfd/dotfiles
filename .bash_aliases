# Some small aliases

# Bash
alias cdd='cd -'
alias tmux="TERM=screen-256color-bce tmux"

alias ls='ls -X --group-directories-first --color=auto'
alias l='ls'
alias ll='ls -hl'
alias lll='ls -hal'

alias lynx='lynx -assume_charset=utf-8 -display_charset=utf-8'

# Handy handy
alias vi='vim'
alias pprint='python -m json.tool'
alias ftab='firefox -new-tab'
alias is='ps aux | grep -v grep | grep -i'
alias was='history | grep'

alias temp='nvidia-smi -q -a | grep GPU\ Current\ Temp'

# Git:
alias gst='git status'
alias gdi='git diff --color-words'
alias gsh='git show --color-words'
alias gloo='git log --color-words'
alias glo='gloo --oneline'
alias gwh='git whatchanged --color-words'
alias gad='git add'
alias gco='git commit -m'
alias gbr='git branch'

# Xbox driver for playstation controller ...
alias xbox='sudo xboxdrv --buttonmap L2=X,R2=X,L1=X,R1=X --silent --detach-kernel-driver'

# Cube it!
alias scramble='python ~/Documents/Code/scrambler/scrambler.py'
alias cubetime='python ~/Documents/Code/scrambler/cubetime.py'

# More Diverse
genpasswd() {
    local l=$1
        [ "$l" == "" ] && l=16
        tr -dc A-Za-z0-9_ < /dev/urandom | head -c ${l} | xargs
}
