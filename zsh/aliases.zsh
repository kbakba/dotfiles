alias dotmate='mate $ZSH'
alias dotsubl='subl $ZSH'
alias dotcd='cd $ZSH'
alias dotvim='vim $ZSH'

alias reload!='. ~/.zshrc'

alias -g L='| less'
alias -g L='| less'
alias -g G='| grep'
alias -g GI='| grep --ignore-case'
alias -g GC='| grep --count'
alias -g H='| head'
alias -g T='| tail'
alias -g S='| sort'
alias -g SU='| sort --unique'
alias -g WC='| wc -l'

lcd() {cd "$1" && ls}
mcd() { mkdir "$1" && cd $1 }