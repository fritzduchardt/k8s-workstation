# Oh-my-zsh
export LOG_LEVEL=info
export ZSH="$HOME/projects/github/ohmyzsh"
export ZSH_CUSTOM="$HOME/projects/github/fritzmyzsh"
export ZSH_THEME="afowler"
plugins=(
  aliases
  argocd
  colorize
  dotfiles
  docker
  find
  git-slim
  goenv
  helm
  myks
  nmap
  k9s
  kind
  kubectl
  kubeswitch
  sudo
  systemd
  zoxide
  zshrc
)
source $ZSH/oh-my-zsh.sh
