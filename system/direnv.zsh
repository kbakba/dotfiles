if exists direnv; then
    eval "$(direnv hook zsh)"
    source "$HOME/.config/asdf-direnv/zshrc"
fi
