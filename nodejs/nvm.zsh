## Fast version from
# https://gist.github.com/lukeshiru/e239528fbcc4bba9ae2ef406f197df0c
if [ -s $(brew_prefix nvm)/nvm.sh ] && [ ! "$(type -f __init_nvm)" = function ]; then
    export NVM_DIR="$HOME/.nvm"
    export NODE_VERSIONS="$NVM_DIR/versions/node"
    export NODE_VERSION_PREFIX=v
    [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
    declare -a __node_commands=(nvm `find -L $NVM_DIR/versions/*/*/bin -type f -exec basename {} \; | sort -u`)
    function __init_nvm() {
        for i in "${__node_commands[@]}"; do unalias $i; done
        source $(brew_prefix nvm)/nvm.sh
        unset __node_commands
        unset -f __init_nvm
    }
    for i in "${__node_commands[@]}"; do alias $i='__init_nvm && '$i; done
fi