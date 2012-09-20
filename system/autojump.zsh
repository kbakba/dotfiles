if [ -s /usr/share/autojump/autojump.zsh ]; then
    source /usr/share/autojump/autojump.zsh
elif [ -s /etc/profile.d/autojump.zsh ]; then
    source /etc/profile.d/autojump.zsh
elif [ -s $(brew_prefix autojump)/etc/autojump.zsh ]; then
    source $(brew_prefix autojump)/etc/autojump.zsh
elif [ -s ~/.autojump/etc/profile.d/autojump.zsh ]; then
    source ~/.autojump/etc/profile.d/autojump.zsh
fi
