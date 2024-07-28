# [en-us] - Setting up UFW 

1. **`config-ufw.sh`:**
   - To use this script, the user needs to install the Uncomplicated Firewall (UFW) through the distribution's package manager.
      - Fedora:
        ```bash
        sudo dnf install ufw -y
        ```
      - Debian and derivatives:
        ```bash
        sudo apt install ufw -y
        ```
      - openSUSE:
        ```bash
        sudo zypper install ufw -y
        ```
      - Arch Linux and derivatives:
        ```bash
        sudo pacman -S ufw
        ```
   - Grant execute permissions and run the script with sudo privileges:
      ```bash
      chmod +x config-ufw.sh
      sudo ./config-ufw.sh
      ```
   - **Note:** Before executing the scripts, ensure you meet the requirements and carefully review the code to avoid issues. Use responsibly.

***This section provides the necessary instructions for installing UFW on various Linux distributions before proceeding with the configuration script. Adjust the installation commands as per your specific Linux distribution.***

---

# [pt-br] - Configuração UFW -- Shellscript

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
        sudo zypper install ufw -y
        ```
      - Arch Linux e derivados:
        ```bash
        sudo pacman -S ufw 
        ```
   - Conceda permissões de execução e execute o script com privilégios de sudo:
      ```bash
      chmod +x config-ufw.sh
      sudo ./config-ufw.sh
      ```
   - **Observação:** Antes de executar os scripts, verifique se atende aos requisitos e revise o código cuidadosamente para evitar problemas. Utilize com responsabilidade.

***Esta seção fornece as instruções necessárias para instalar o UFW em várias distribuições Linux antes de prosseguir com o script de configuração. Ajuste os comandos de instalação conforme sua distribuição Linux específica.***
