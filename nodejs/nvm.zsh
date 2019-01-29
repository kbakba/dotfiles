if [ -s $(brew_prefix nvm)/nvm.sh ]; then
    export NVM_DIR=$HOME/.nvm
    export NODE_VERSIONS=$NVM_DIR/versions/node
    export NODE_VERSION_PREFIX=v
    source $(brew_prefix nvm)/nvm.sh

    # from https://gist.github.com/fl0w/07ce79bd44788f647deab307c94d6922
    #
    # lazyload nvm
    # all props goes to http://broken-by.me/lazy-load-nvm/
    # grabbed from reddit @ https://www.reddit.com/r/node/comments/4tg5jg/lazy_load_nvm_for_faster_shell_start/

    # lazynvm() {
    #     unset -f nvm node npm
    #     source $(brew_prefix nvm)/nvm.sh # This loads nvm
    # }

    # nvm() {
    #     lazynvm
    #     nvm $@
    # }

    # node() {
    #     lazynvm
    #     node $@
    # }

    # npm() {
    #     lazynvm
    #     npm $@
    # }

fi
