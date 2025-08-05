function __finder_dir
    set -l window_index (test -n "$argv[1]"; and echo $argv[1]; or echo 1)
    osascript -e "tell application \"Finder\"
        if ($window_index <= (count Finder windows)) then
            get POSIX path of (target of window $window_index as alias)
        else
            get POSIX path of (desktop as alias)
        end if
    end tell"
end

function cdff --description 'will change the terminal directory to current directory open in the Finder'
    cd $(__finder_dir $argv)
end