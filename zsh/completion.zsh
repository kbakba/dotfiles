# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# enable .. completion
zstyle ':completion:*' special-dirs true

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# external completion
test -e "${HOME}/bin/completion" && source ${HOME}/bin/completion/*
