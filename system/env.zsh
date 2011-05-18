export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export GREP_OPTIONS="--exclude="\*/.svn/\*" --color "
export EDITOR=vim

[ -x /usr/bin/lesspipe ] && eval "$(lesspipe)"
[ -x "$( which most )" ] && export PAGER=most