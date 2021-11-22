## Other
alias chmodsh='chmod +x *.sh *.py *.pl'
alias cpf='rsync --progress'
alias rm="rm -i"
alias sort="LC_ALL=C sort"

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

# sift
alias rgrep='sift'
alias rg='sift'

# docker
alias d='docker'
