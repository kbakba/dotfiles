# Use virtualenvwrapper http://pypi.python.org/pypi/virtualenvwrapper
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
fi

# https://bitbucket.org/psagers/virtualenv-sh
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    # Configure all virtualenv-sh functions for autoloading
    fpath=(/usr/local/bin/virtualenv-sh $fpath)
    autoload -w /usr/local/bin/virtualenv-sh

    # Call the main initialization function
    virtualenv_sh_init

    # init autoworkon
    autoload -U add-zsh-hook
    add-zsh-hook chpwd autoworkon
fi