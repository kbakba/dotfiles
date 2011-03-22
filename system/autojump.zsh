if [ -f $BREW_PREFIX/etc/autojump ]; then
    source $BREW_PREFIX/etc/autojump.zsh
elif [ -f /etc/profile.d/autojump.zsh ]; then
    source /etc/profile.d/autojump.zsh
fi