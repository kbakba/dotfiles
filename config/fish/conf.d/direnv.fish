if command -q direnv
  set -g direnv_fish_mode eval_on_arrow
  direnv hook fish | source
  #source "$HOME/.config/asdf-direnv/zshrc"
end
