# Must be before nvm.zsh
if exists npm ; then
    cd ~
    NPM_BIN=`npm bin`
    NODE_PATH_NPM=`npm root -g`
    export PATH="$NPM_BIN:$PATH"
    export NODE_PATH="$NODE_PATH_NPM:$NODE_PATH"

    if [ -d $HOME/node_modules/.bin ]; then
        export PATH="$HOME/node_modules/.bin:$PATH"
    fi
fi
