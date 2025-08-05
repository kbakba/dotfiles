
if status is-interactive
  # Commands to run in interactive sessions can go here
end

# Added by LM Studio CLI (lms)
fish_add_path $HOME/.lmstudio/bin
# Bun
fish_add_path $HOME/.bun/bin
# ops
fish_add_path $HOME/.ops/bin
# Orbstack
fish_add_path $HOME/.orbstack/bin

set plugins \
  https://github.com/kidonng/plug.fish \
  https://github.com/kidonng/zoxide.fish
source (path filter $__fish_user_data_dir/plugins/plug.fish/conf.d/plugin_load.fish || curl https://raw.githubusercontent.com/kidonng/plug.fish/v3/conf.d/plugin_load.fish | psub)


function keychain_set
  security add-generic-password -a $USER -T "" -U -s cli.$argv[1] -w $argv[2]
end

function keychain_get
  security find-generic-password -a $USER -s cli.$argv[1] -w
end


export GEMINI_API_KEY=(keychain_get GEMINI_API_KEY)
export HOWTO_AI_TOKEN=(keychain_get HOWTO_AI_TOKEN)