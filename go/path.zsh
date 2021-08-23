export GOPATH=$HOME/golang
if exists go ; then
    export PATH=$PATH:$GOPATH/bin
    export GOROOT=$(go env GOROOT)
fi

if [ -d /usr/local/go/bin ]; then
    export PATH=$PATH:/usr/local/go/bin
fi
