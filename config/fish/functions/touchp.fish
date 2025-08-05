function touchp --wraps='mkdir' --description 'touch file and directory'
  mkdir -p $( path dirname $argv[1] )
  touch $argv[1]
end
