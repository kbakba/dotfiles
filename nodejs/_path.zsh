# Must be before nvm.zsh
if exists npm ; then
    cd ~
    NPM_BIN=`npm prefix`/.bin
    NODE_PATH_NPM=`npm root -g`/.bin
    export PATH="$NPM_BIN:$PATH"
    export NODE_PATH="$NODE_PATH_NPM:$NODE_PATH"
fi
