# some more ls aliases
LS=ls

ls --color &> /dev/null; if [ $? -eq 0 ] ; then LS='ls --color=auto ' ; fi

alias ..='cd ..'
alias ...='cd ../../'

alias ll=$LS' -l -h'
alias la=$LS' -A -h'
alias l=$LS' -CF'
alias chmodsh='chmod +x *.sh *.py *.pl'
alias cpf='rsync --progress'

# week number
alias week='date +%W'

# grep without .svn/ debian/ and other
alias rgrep="ack-grep"

# vimv for Sublime Editor
alias smv='vimv -e subl'

# calc
function calc { awk "BEGIN{ print $* }" ;}

# svn
function svndi {
    if [ -d .svn ]; then
        svn diff $* | colordiff | less -R
    fi
}

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