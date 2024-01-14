# Oh-my-zsh
export ZSH="$HOME/projects/github/ohmyzsh"
export ZSH_CUSTOM="$HOME/projects/github/fritzmyzsh"
export ZSH_THEME="afowler"
plugins=(
  zshrc
  aliases
  argocd
  autojump
  colorize
  docker
  fzf
  git-slim
  helm
  nmap
  kubectl
  sudo
  zoxide
)
source $ZSH/oh-my-zsh.sh
