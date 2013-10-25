# https://github.com/Homebrew/linuxbrew
if [ -d ~/.linuxbrew ]; then
    export PATH=$PATH:~/.linuxbrew/bin
    export LD_LIBRARY_PATH=~/.linuxbrew/lib
fi