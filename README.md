# Configuração UFW -- Shellscript

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

**Observação:** Antes de executar os scripts, verifique se atende aos requisitos e revise o código cuidadosamente para evitar problemas. Utilize com responsabilidade.

