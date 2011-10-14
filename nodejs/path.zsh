NPM=`which npm`
if [ -e $NPM ]; then
    cd ~
    NPM_BIN=`npm bin`
    export PATH="$NPM_BIN:$PATH"
fi