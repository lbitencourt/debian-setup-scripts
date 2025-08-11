# Script de Instalação para Debian 12

Este é um script de shell simples projetado para automatizar a instalação de ferramentas essenciais em uma nova instalação do Debian 12. O script instala as principais ferramentas de desenvolvimento, utilitários de terminal e o ambiente Docker.

---

## O que o script instala?

O script `instalar_ferramentas.sh` automatiza a instalação dos seguintes pacotes e ferramentas:

* **curl**: Ferramenta para transferir dados de e para um servidor.
* **git**: Sistema de controle de versão distribuído.
* **neofetch**: Ferramenta de informação do sistema.
* **zsh**: Shell aprimorado.
* **Oh My Zsh**: Framework para gerenciar a configuração do Zsh.
* **xfce4-terminal**: Emulador de terminal leve e personalizável.
* **compton-conf**: Ferramenta de configuração para o compositor Compton.
* **Docker CE**: A versão Community Edition do Docker.

---

## Como usar o script

Siga os passos abaixo para baixar e executar o script.

### 1. Baixar o script

Abra um terminal no seu Debian 12 e use o `curl` para baixar o script diretamente do seu repositório no GitHub.

```bash
curl -O [https://raw.githubusercontent.com/seu_usuario/seu_repositorio/main/instalar_ferramentas.sh](https://raw.githubusercontent.com/seu_usuario/seu_repositorio/main/instalar_ferramentas.sh)
