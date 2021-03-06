zplug "zplug/zplug",                            hook-build:'zplug --self-manage'
zplug "zpm-zsh/material-colors",                as:plugin, use:material-colors.plugin.zsh

# zsh users
zplug "zsh-users/zsh-completions",              defer:0
zplug "zsh-users/zsh-autosuggestions",          defer:2, on:"zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting",      defer:3, on:"zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search", defer:3, on:"zsh-users/zsh-syntax-highlighting"
zplug "kiurchv/asdf.plugin.zsh",                defer:3
zplug "rupa/z",                                 use:z.sh

zplug "romkatv/powerlevel10k",                  as:theme
