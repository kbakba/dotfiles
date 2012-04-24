if [ -f $(brew_prefix autojump)/etc/autojump.zsh ]; then
    source $(brew_prefix autojump)/etc/autojump.zsh
elif [ -f /etc/profile.d/autojump.zsh ]; then
    source /etc/profile.d/autojump.zsh
fi