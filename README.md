## ShellScript

Este repositório contém uma coleção de scripts que foram desenvolvidos para auxiliar e automatizar processos de trabalho específicos. Os scripts foram criados para simplificar tarefas rotineiras, economizar tempo e melhorar a eficiência. Sinta-se à vontade para explorar e usar esses scripts de acordo com suas necessidades.
Scripts em desenvolvimento.

## Conteudo
 
1 > config-ufw.sh - Configuração basica de fiwareall usando Uncomplicate firewall - UFW

2 > automatizacao.sh - Automatização de processos diarios no meu serviço como analista de suporte TI, acessos Secure Shell (SSH), copias de arquivos através do protocolo Secure Copy Protocol (SCP), uso da ferramenta nmap. 

3 > xrandr.sh - Automatização para configuração do display, para quem optou usar gerenciadores de janela

## Requisitos

1 > Para usar esse script o usuario precisa instalar o pacote do Uncomplicate firewall (UFW) através do gerenciador de pacotes da distribuição.
    > fedora : sudo dnf install ufw -y
    > debian e derivados : sudo apt install ufw -y
    > opensuse : sudo zypper install ufw
    > arch linux e derivados : yay -s ufw

2 > Para usar esse script o usuario precisa se atentar aos diretorios locais para corrigir todos locais de acesso ou salvamento de arquivos pelo SCP.

3 > Para usar esse script o usuario precisa instalar o utilitario xrandr na distribuição
    > fedora : sudo dnf install xrandr 
    > debian e derivados : sudo apt install xrandr
    > opensuse : sudo zypper install xrandr
    > arch linux e derivadors : sudo pacman -Syu xrandr

