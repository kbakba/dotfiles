# some more ls aliases
LS=ls

ls --color &> /dev/null; if [ $? -eq 0 ] ; then LS='ls --color=auto ' ; fi

alias ll=$LS' -l -h'
alias la=$LS' -A -h'
alias l=$LS' -CF'
alias chmodsh='chmod +x *.sh *.py *.pl'
alias cpf='rsync --progress'

# week number
alias week='date +%W'

# grep without .svn/ debian/ and other
alias rgrep="ack-grep"

# calc
function calc { awk "BEGIN{ print $* }" ;}

# svn
function svndi {
    if [ -d .svn ]; then
        svn diff $* | colordiff | less -R
    fi
}
