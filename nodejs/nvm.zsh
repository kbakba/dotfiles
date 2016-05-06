if [ -s $(brew_prefix nvm)/nvm.sh ]; then
    export NVM_DIR=~/.nvm
    source $(brew_prefix nvm)/nvm.sh
fi