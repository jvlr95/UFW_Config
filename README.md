# Scripts Pessoais - ShellScript

Este repositório contém uma coleção de scripts desenvolvidos para auxiliar e automatizar processos específicos. Os scripts foram criados com o objetivo de simplificar tarefas rotineiras, economizar tempo e melhorar a eficiência. Sinta-se à vontade para explorar e utilizar esses scripts conforme suas necessidades. Scripts em desenvolvimento.

## Conteúdo

### 1. `current_config_ufw.sh`
   - Script `1.0config_ufw.sh`: Configuração básica de firewall usando o Uncomplicated Firewall (UFW).
   - Script `current_configu_ufw.sh`: Configuração intermediária para uso de firewall em ambientes Kubernetes com foco em testes locais.

### 2. `automatizacao.sh`
   - Automação de processos diários como analista de suporte de TI, incluindo acessos SSH, cópias de arquivos usando SCP e utilização da ferramenta nmap.

### 3. `xrandr.sh`
   - Automação para configuração do display, útil para quem utiliza gerenciadores de janelas.

## Requisitos

1. **`config-ufw.sh`:**
   - Para usar este script, o usuário precisa instalar o Uncomplicated Firewall (UFW) através do gerenciador de pacotes da distribuição.
      - Fedora:
        ```bash
        sudo dnf install ufw -y
        ```
      - Debian e derivados:
        ```bash
        sudo apt install ufw -y
        ```
      - openSUSE:
        ```bash
        sudo zypper install ufw
        ```
      - Arch Linux e derivados:
        ```bash
        yay -s ufw
        ```

2. **`automatizacao.sh`:**
   - O usuário deve ajustar os diretórios locais para corrigir qualquer problema de acesso ou salvamento de arquivos via SCP.
   
3. **`xrandr.sh`:**
   - Para usar este script, o usuário precisa instalar o utilitário xrandr em sua distribuição.
     - Fedora:
        ```bash
        sudo dnf install xrandr 
        ```
     - Debian e derivados:
        ```bash
        sudo apt install xrandr
        ```
     - openSUSE:
        ```bash
        sudo zypper install xrandr
        ```
     - Arch Linux e derivados:
        ```bash
        sudo pacman -Syu xrandr
        ```

**Observação:** Antes de executar os scripts, verifique se atende aos requisitos e revise o código cuidadosamente para evitar problemas. Utilize com responsabilidade.

