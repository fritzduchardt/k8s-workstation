# Oh-my-zsh
export ZSH="$HOME/projects/github/ohmyzsh"
export ZSH_CUSTOM="$HOME/projects/github/fritzmyzsh"
export ZSH_THEME="afowler"
plugins=(
  aliases
  argocd
  autojump
  colorize
  docker
  git
  helm
  kubectl
  sudo
  zoxide
  zshrc
)
source $ZSH/oh-my-zsh.sh
