if exists npm ; then
    cd ~
    NPM_BIN=`npm bin`
    NODE_PATH_NPM=`npm root -g`
    export PATH="$NPM_BIN:$PATH"
    export NODE_PATH="$NODE_PATH_NPM:$NODE_PATH"
fi
