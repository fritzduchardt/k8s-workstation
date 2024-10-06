# Oh-my-zsh
export LOG_LEVEL=info
export ZSH="$HOME/projects/github/ohmyzsh"
export ZSH_CUSTOM="$HOME/projects/github/fritzmyzsh"
export ZSH_THEME="afowler"
plugins=( {{ zsh_plugins }} )
source $ZSH/oh-my-zsh.sh
export RPROMPT='%F{blue} '"$(cluster-info)"'%f'
