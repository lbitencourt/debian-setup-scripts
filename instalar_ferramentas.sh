#!/bin/bash

# Atualiza a lista de pacotes
echo "Atualizando a lista de pacotes..."
sudo apt update

# Instala as dependências necessárias para o Docker
echo "Instalando as dependências do Docker..."
sudo apt install -y ca-certificates curl gnupg

# Adiciona a chave GPG oficial do Docker
echo "Adicionando a chave GPG do Docker..."
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg

# Adiciona o repositório do Docker à lista de fontes
echo "Adicionando o repositório do Docker..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Atualiza novamente a lista de pacotes com o novo repositório
echo "Atualizando a lista de pacotes novamente..."
sudo apt update

# Instala os pacotes necessários: curl, git, neofetch, zsh, xfce4-terminal, compton-conf e Docker CE
echo "Instalando curl, git, neofetch, zsh, xfce4-terminal, compton-conf e Docker CE..."
sudo apt install -y curl git neofetch zsh xfce4-terminal compton-conf docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

# Adiciona o usuário atual ao grupo 'docker'
echo "Adicionando o usuário $USER ao grupo docker..."
sudo usermod -aG docker $USER

# Instala o Oh My Zsh
echo "Instalando Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Instalação e configuração concluídas!"
echo "ATENÇÃO: Você precisa fazer logout e login novamente para que o Zsh e o Docker funcionem sem 'sudo'."
