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

# week number
alias week='date +%W'

# grep without .svn/ debian/ and other
alias grep="grep --exclude-dir=.svn --exclude-dir=debian --exclude=_*.css --exclude=_*.js"
alias rgrep="ack"

# calc
calc(){ awk "BEGIN{ print $* }" ;}