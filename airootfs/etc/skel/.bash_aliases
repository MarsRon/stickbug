# ls aliases & color
alias ls='ls --color=auto'
alias ll='ls -alhF'
alias la='ls -A'
alias l='ls -CF'

# grep color
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# shell utils
alias c='clear'
alias reload='source ~/.bashrc'
alias ff='fastfetch'
alias ssh='kitten ssh'
alias cb='xclip -selection clipboard'

# cd
alias ..='cd ..'
alias ...='cd ../..'
mkcd () { mkdir "$1" && cd "$1"; }
mkcode () { mkdir "$1" && code "$1"; }

# monitoring
alias ping='ping -c 5'
alias htop='htop -d 5'
alias cx='chmod +x'

# system
alias update='yay -Syu'
alias clean='yes | yay -Scc'
