# DevOps Tooling Setup Guide

## 🚀 Installation Script
To automate the setup process, run the following script:

```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/eugenegoncharuk/devops-tools-installation/main/install.sh)"
```

---

## This script includes the tooling listed below

## 📦 Package Manager (Mac OS)
Ensure **Homebrew** is installed before proceeding with other installations.
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

---

## 🛠 Essential Tools

### 📝 Clipboard Manager
**Flycut** - A copy-paste buffer manager.
```sh
brew install --cask flycut
```

### 🖥 Code Editor
**Visual Studio Code**
```sh
brew install --cask visual-studio-code
```

### ☸️ Kubernetes CLI Tools
**Kubectl** & **Kubectx**
```sh
brew install kubectl
brew install kubectx
```

### 📦 Helm
Helm package manager for Kubernetes.
```sh
brew install helm
```

### 🌍 Terraform
Install Terraform via HashiCorp tap.
```sh
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

---

## 🔧 Terminal Setup

### 🖥 Terminal & Zsh Setup
Install **iTerm2**, **Zsh**, and **Oh My Zsh**.

Keyboard shortcut to jump between words in iTerm2:
1. Click on iTerm2 and open “Preferences”
2. Click on “Profiles”
3. Select your profile from the left (in my case “Default”)
4. Click on “Keys” tab
5. Click “Key Mappings” tab
6. Click the “Presets” dropdown and select “Natural Text Editing”

and also to correctly delete words and lines in terminal do this:
<img width="686" alt="image" src="https://github.com/user-attachments/assets/6630fa96-a12a-4b06-8708-9683bb27e1a4" />

```sh
brew install --cask iterm2
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### 🧩 Zsh Plugins
Enhance Zsh with syntax highlighting and autosuggestions.
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone https://github.com/zsh-users/zsh-autosuggestions \
    ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

### 🔌 Enabled Plugins in `~/.zshrc`
Add the following plugins to your **.zshrc** file:
```sh
plugins=(
  git
  docker
  fzf
  kubectl
  minikube
  zsh-syntax-highlighting
  zsh-autosuggestions
)
```

---

## 🏗 Additional Tooling
Install common development tools.
```sh
brew install vim
brew install git
brew install python
brew install azure-cli
brew install wget
brew install tree
brew install go
brew install stern
```

---

## 🎯 Conclusion
After installation, restart your terminal to ensure all changes take effect.
Happy coding! 🚀

