set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_CACHE_HOME "$HOME/.cache"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_STATE_HOME "$HOME/.local/state"
set -x XDG_RUNTIME_DIR "/run/user/$(id -u)"

set -x HISTFILE "$XDG_STATE_HOME/bash/history"
set -x LESSHISTFILE "$XDG_STATE_HOME/less/history"
set -x NODE_REPL_HISTORY "$XDG_DATA_HOME/node_repl_history"
set -x NPM_CONFIG_USERCONFIG "$XDG_CONFIG_HOME/npm/npmrc"
set -x PYTHON_HISTORY "$XDG_DATA_HOME/python/history"
set -x SQLITE_HISTORY "$XDG_CACHE_HOME/sqlite_history"

alias wget='wget --hsts-file="$XDG_DATA_HOME/wget-hsts"'

