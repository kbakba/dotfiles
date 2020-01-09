## Other
alias chmodsh='chmod +x *.sh *.py *.pl'
alias cpf='rsync --progress'
alias rm="rm -i"

# week number
alias week='date +%W'

# calc
function calc { awk "BEGIN{ print $* }" ;}

function touchp {
    mkdir -p $( dirname $1 )
    touch $1
}

# Watch last command
# TODO: remove wtch from HISTORY
function wtch {
    LAST_COMMAND=` history -n -1 `
    watch -n ${1:=10} $LAST_COMMAND
}

# ripgrep
alias rgrep='rg'

# docker
alias d='docker'
