# DON'T edit manually. This comes from k8s-workstation and is rolled out with ansible
export LOG_LEVEL=info
export ZSH="$HOME/projects/github/ohmyzsh"
export ZSH_CUSTOM="$HOME/projects/github/fritzmyzsh"
export ZSH_THEME="afowler"

plugins=( {{ zsh_plugins }} )

source $ZSH/oh-my-zsh.sh
# shellcheck disable=SC2016
export RPROMPT='%F{blue} $(cluster-info)%f'
