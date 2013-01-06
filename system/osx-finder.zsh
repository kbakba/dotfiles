# from https://github.com/NapoleonWils0n/bashfinder/blob/master/.bash_macosx
#|------------------------------------------------------------------------------
#|  bashfinder - control the Finder with terminal
#|------------------------------------------------------------------------------

function __finder_go_to {
    osascript -e "set cwd to do shell script \"pwd\"
    tell application \"Finder\"
        if (${1-1} <= (count Finder windows)) then
            set the target of window ${1-1} to (POSIX file cwd) as string
        else
            open (POSIX file cwd) as string
        end if
    end tell";
};

# Check if a directory is passed to cd, eg: $ cd Desktop
# if no directory is specified typing cd changes dir to $PWD
function cdee() {
    if [ -z "$1" ]; then
        __finder_go_to > /dev/null;
    else
        cd "$1"; __finder_go_to > /dev/null;
    fi
};

#|------------------------------------------------------------------------------
#|  Change terminal directory to current directory open in the Finder
#|------------------------------------------------------------------------------

# cdff will change the terminal directory to current directory open in the Finder
function __finder_dir {
    osascript -e "tell application \"Finder\"
        if (${1-1} <= (count Finder windows)) then
            get POSIX path of (target of window ${1-1} as alias)
        else
            get POSIX path of (desktop as alias)
        end if
    end tell";
};

function cdff {
    cd "`__finder_dir $@`";
};