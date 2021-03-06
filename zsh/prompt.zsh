autoload colors && colors
# cheers, @ehrenmurdick
# http://github.com/ehrenmurdick/config/blob/master/zsh/prompt.zsh

git_branch() {
  echo $(git symbolic-ref HEAD 2>/dev/null | awk -F/ '{print $NF}')
}

git_dirty() {
  st=$(git status 2>/dev/null)
  if [[ $st != "" ]]
  then
    st=$(git status 2>/dev/null | tail -n 1)
    case "$st" in
    "nothing to commit"*)
        echo "git:%{$fg_no_bold[green]%}$(git_prompt_info)%{$reset_color%}" ;;
      *)
        echo "git:%{$fg_no_bold[red]%}$(git_prompt_info)%{$reset_color%}" ;;
    esac
  fi
}

git_prompt_info() {
 ref=$(git symbolic-ref HEAD 2>/dev/null) || return
# echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
 echo "${ref#refs/heads/}"
}

unpushed() {
    git cherry -v origin/$(git_branch) 2>/dev/null
}

need_push() {
  if [[ $(unpushed) == "" ]]
  then
    echo ""
  else
    echo "%{$fg_bold[magenta]%}*%{$reset_color%}"
  fi
}

host_and_username() {
  echo "%{$fg_bold[green]%}%n@%m%{$reset_color%}"
}

directory_name() {
  echo "%{$fg_bold[blue]%}%~%{$reset_color%}"
}

VIRTUAL_ENV_DISABLE_PROMPT=1
function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo "/ %{$fg_bold[yellow]%}${VIRTUAL_ENV##*/}%{$reset_color%}"
}

export PROMPT=$'$(host_and_username):$(directory_name) $(git_dirty)$(need_push) $(virtualenv_info)\n\$ '
set_prompt() {
  export RPROMPT=""
}

precmd() {
  set_prompt
}
case $TERM in
    xterm* | rxvt)
        precmd(){print -Pn "\e]0;%n@%m: %~\a"}
    ;;
esac
