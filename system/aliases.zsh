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
alias rm="rm -i"

# week number
alias week='date +%W'

# ripgrep
alias rgrep="rg"

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

# Docker
function docker-clean-images {
    docker rmi $(docker images -f 'dangling=true' -q)
}

function docker-clean-conteiners {
    docker rm $(docker ps -a -q)
}
