### devops-tools-installation
Every DevOps tool set to be installed

### Brew - Mac OS package manager
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

### Flycut - Copy-Paste buffer manager
brew install --cask flycut

### Visual Studio Code
brew install --cask visual-studio-code

### Kubectl and Kubectx
brew install kubectl
brew install kubectx

### Helm
brew install helm

### Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

### Suggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

### Terminal Iterm2 + plugins
brew install --cask iterm2
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

### Tooling
brew install vim
brew install git
brew install python
brew install azure-cli
brew install wget
brew install tree
brew install go
brew install node
brew install groovy

### Enable plugins under ~/.zshrc
plugins=(
  git
  docker
  fzf
  httpie
  minikube
  zsh-syntax-highlighting
  zsh-autosuggestions
)

