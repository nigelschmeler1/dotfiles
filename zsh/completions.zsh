# Caching autocompletion
# https://blog.callstack.io/supercharge-your-terminal-with-zsh-8b369d689770
autoload -Uz compinit
if [[ -n ~/.zcompdump(#qN.mh+24) ]]; then
  compinit -i
else
  compinit -C -i
fi

# Menu-like autocompletion selection
zmodload -i zsh/complist

# Automatically list choices on ambiguous completion
setopt AUTO_LIST
# Automatically use menu completion
setopt AUTO_MENU
# Move cursor to end if word had one match
setopt ALWAYS_TO_END
#When the current word has a glob pattern, do not insert all the words resulting from the expansion
setopt GLOB_COMPLETE

# Select completions with arrow keys
zstyle ':completion:*' menu select
# Group results by category
zstyle ':completion:*' group-name ''
# Enable approximate matches for completion
zstyle ':completion:::::' completer _expand _complete _ignored _approximate
# Case and hyphen insensitive
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'
# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH_CACHE_DIR

[[ $- == *i* ]] && source "/usr/local/opt/fzf/shell/completion.zsh" 2> /dev/null