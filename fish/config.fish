# Application specific
. ~/.config/fish/config.prompt
. ~/.config/fish/config.git
#. ~/.config/fish/config.vim
. ~/.config/fish/config.shortcuts

switch (uname)
	case Linux
		. ~/.config/fish/config.docker
		. ~/.config/fish/config.wsl
end

# Welcome Message
set fish_greeting ""

#Exports
#set -g fish_user_paths "/usr/local/opt/icu4c/bin" $fish_user_paths
#set -g fish_user_paths "/usr/local/opt/icu4c/sbin" $fish_user_paths
#set -U fish_user_paths "/usr/local/bin/yarn" $fish_user_paths
set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8
set -x LANGUAGE en_US.UTF-8

set -x FZF_DEFAULT_COMMAND 'ag --hidden --ignore .git -g ""'
