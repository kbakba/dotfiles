export GOPATH=$HOME/golang
if command -q go
    fish_add_path $GOPATH/bin
end
