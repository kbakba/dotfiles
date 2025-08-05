alias g=git
alias gl='git pull --rebase --prune'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gb='git branch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"

## Other
alias chmodsh='chmod +x *.sh *.py *.pl'
alias cpf='rsync --progress'
alias rm="rm -i"
#alias sort="LC_ALL=C sort"

# calc
alias calc='math'

# sift
alias rgrep='sift'
alias rg='sift'

# docker
alias d='docker'

alias vscode='code'