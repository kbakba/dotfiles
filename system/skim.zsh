if exists sk; then
    # History
    function skim_select_history() {
        BUFFER=$(fc -l -n 1 | sk --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N skim_select_history
    bindkey '^R' skim_select_history

    # Git
    local GIT_SK="sk --ansi --cycle --height 45%"
    git config --global --replace-all alias.br "!git branch | fgrep -v '* ' | $GIT_SK | xargs git checkout"
    git config --global --replace-all alias.bra "!git branch --remotes | sed -e 's#origin/##' | $GIT_SK | xargs git checkout"

    # Pazi intergation
    if exists z; then
        unalias zz
        alias zz="z --pipe 'sk --height 45%'"
    fi
fi

