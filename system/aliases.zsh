function svndi {
    if [ -d .svn ]; then
        svn diff $* | colordiff | less -R 
    fi
}

# some more ls aliases
alias ll='ls -l -h'
alias la='ls -A -h'
alias l='ls -CF'
alias chmodsh='chmod +x *.sh *.py *.pl'
alias cpf='rsync --progress'

# week number
alias week='date +%W'

# grep without .svn/ debian/ and other
alias rgrep="ack-grep"

# calc
calc(){ awk "BEGIN{ print $* }" ;}