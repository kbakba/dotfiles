function cdee --description 'cd to current dir in Finder'
    set -l window_index (test -n "$argv[1]"; and echo $argv[1]; or echo 1)
    osascript -e "set cwd to do shell script \"pwd\"
      tell application \"Finder\"
          if ($window_index <= (count Finder windows)) then
              set the target of window $window_index to (POSIX file cwd) as string
          else
              open (POSIX file cwd) as string
          end if
      end tell
    "
end