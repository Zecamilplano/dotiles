!/bin/bash

# Atualização de pacotes
sudo apt update -y
sudo apt upgrade -y

# Programas
sudo apt install git curl unzip
sudo snap install nvim --classic

# Mudo a versão do nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
command -v nvm
source ~/.zshrc
nvm install

npm i -g live-server
# Instalar e configurar ZSH
sudo apt install zsh -y
chsh -s /bin/zsh
zsh
# Enter para continuar

# Instalar Oh-my-zsh! -> https://ohmyz.sh/
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Troca de tema do oh my ZSH
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="amuse"/g' ~/.zshrc

# Instalar Zsh Autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Instalar Zsh Syntax Highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete

# Instalações de plugins
omz plugin enable git-prompt sudo zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete

source ~/.zshrc

git clone https://github.com/alacritty/alacritty.git
cd alacritty

# Instalação de fontes
mkdir -p ~/.fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/CascadiaMono.zip ~/.fonts
unzip ~/.fonts/CascadiaMono.zip
fc-cache -vf
