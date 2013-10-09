if [ -d /usr/local/go/bin ]; then
    export PATH=$PATH:/usr/local/go/bin
    export GOPATH=$HOME/golang
    if [ ! -d $GOPATH ]; then
        mkdir -p $GOPATH
    fi
    export PATH=$PATH:$GOPATH/bin
fi