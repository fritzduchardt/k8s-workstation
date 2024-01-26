# Oh-my-zsh
export LOG_LEVEL=info
export ZSH="$HOME/projects/github/ohmyzsh"
export ZSH_CUSTOM="$HOME/projects/github/fritzmyzsh"
export ZSH_THEME="afowler"
plugins=(
  zshrc
  aliases
  argocd
  colorize
  dotfiles
  docker
  git-slim
  helm
  nmap
  k9s
  kubectl
  sudo
  systemd
  zoxide
)
source $ZSH/oh-my-zsh.sh
