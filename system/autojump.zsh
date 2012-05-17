if [ -f /usr/share/autojump/autojump.zsh ]; then
    source /usr/share/autojump/autojump.zsh
elif [ -f /etc/profile.d/autojump.zsh ]; then
    source /etc/profile.d/autojump.zsh
elif [ -f $(brew_prefix autojump)/etc/autojump.zsh ]; then
    source $(brew_prefix autojump)/etc/autojump.zsh
fi