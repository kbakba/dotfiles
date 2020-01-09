alias ..='cd ..'
alias ...='cd ../../'
lcd() {cd "$1" && ls}
mcd() { mkdir "$1" && cd $1 }
