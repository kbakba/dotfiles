LS=ls
ls --color &> /dev/null; if [ $? -eq 0 ] ; then LS='ls --color=auto ' ; fi

alias ll=$LS' -l -h'
alias la=$LS' -A -h'
