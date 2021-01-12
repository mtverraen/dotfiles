
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Application specific
. ~/.config/fish/config.shortcuts
. ~/.config/fish/config.docker
. ~/.config/fish/config.prompt
. ~/.config/fish/config.git
. ~/.config/fish/config.vim

# Welcome Message
set fish_greeting ""

# Exports
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x LANGUAGE en_US.UTF-8

set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'set -g fish_user_paths "/usr/local/opt/curl/bin" $fish_user_paths
