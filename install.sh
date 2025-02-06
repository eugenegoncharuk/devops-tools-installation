#!/bin/bash

# Install Homebrew (Mac OS package manager)
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install essential tools
brew install --cask flycut
brew install --cask visual-studio-code
brew install kubectl
brew install kubectx
brew install helm

# Install Terraform
brew tap hashicorp/tap
brew install hashicorp/tap/terraform

# Install terminal and shell utilities
brew install --cask iterm2
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install Zsh plugins
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Update .zshrc with plugins
sed -i '' '/^plugins=/,/^)/c\
plugins=(\
  git\
  docker\
  fzf\
  kubectl\
  minikube\
  zsh-syntax-highlighting\
  zsh-autosuggestions\
)' ~/.zshrc

# Install additional tools
brew install vim git python azure-cli wget tree go node groovy

# Reload Zsh configuration
source ~/.zshrc

echo "✅ DevOps setup complete! Restart your terminal to apply changes."
