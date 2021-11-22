export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

export GREP_OPTIONS="--color "
export EDITOR=vim

[ -x /usr/bin/lesspipe.sh ] && eval "$(lesspipe.sh)"

if exists most ; then
    export MANPAGER=most
fi
