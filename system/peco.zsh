if exists peco; then
    local _tac
    exists gtac && _tac="gtac" || { exists tac && _tac="tac" || { _tac="tail -r" } }

    function peco_select_history() {
        BUFFER=$(fc -l -n 1 | eval $_tac | peco --query "$LBUFFER")
        CURSOR=$#BUFFER         # move cursor
        zle -R -c               # refresh
    }

    zle -N peco_select_history
    bindkey '^R' peco_select_history

    git config --global --replace-all alias.br '!git branch | fgrep -v "* " | peco --layout=bottom-up | xargs git checkout'
    git config --global --replace-all alias.bra '!git branch --remotes | sed -e "s#origin/##" | peco --layout=bottom-up | xargs git checkout'

    # [alias]
    #   ad = "!git ls-files --modified --others --exclude-standard | peco --initial-filter=Fuzzy | xargs -r git add --"
    #   df = "!git diff --name-only HEAD | peco --initial-filter=Fuzzy | xargs -r git diff HEAD --"
    #   rs = "!git diff --name-only --cached | peco --initial-filter=Fuzzy | xargs -r git reset -q --"
    #   rb = "!git diff --name-only HEAD | peco --initial-filter=Fuzzy | xargs -I {} -r sh -c 'git reset -q -- {}; git checkout -- {} 2>/dev/null'"
fi

