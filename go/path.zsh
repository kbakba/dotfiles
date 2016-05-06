export GOPATH=$HOME/golang
if [ -x "$( which go )" ]; then
    export PATH=$PATH:$GOPATH/bin
fi

if [ -d /usr/local/go/bin ]; then
    export PATH=$PATH:/usr/local/go/bin
fi
