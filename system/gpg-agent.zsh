if [ -f /etc/X11/Xsession.d/90gpg-agent ]; then
    source /etc/X11/Xsession.d/90gpg-agent
    export GPG_TTY=`tty`
  
    if [ -f $HOME/.gpg-agent-info ]; then
        . "$HOME/.gpg-agent-info"
        export GPG_AGENT_INFO
    else
        eval $(gpg-agent --daemon --write-env-file $HOME/.gpg-agent-info)
    fi
fi
