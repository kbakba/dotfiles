function lcd
    if test (count $argv) -eq 0
        echo "Usage: lcd <directory>"
        return 1
    end
    cd $argv[1]
    ls -l
end