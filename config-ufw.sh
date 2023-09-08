#!/bin/sh

echo "Definindo a política padrão para bloquear todas as conexões de entrada..."
sudo ufw default deny incoming
echo
echo "Definindo a política padrão para permitir todas as conexões de saída..."
sudo ufw default allow outgoing
echo
echo "Permitindo o acesso SSH..."
sudo ufw allow ssh
echo
echo "Permitindo o acesso FTP na porta 21 (controle)..."
sudo ufw allow 21/tcp
echo
echo "Permitindo o acesso FTP na porta 21 (dados, se necessário)..."
sudo ufw allow 21/tcp
echo
echo "Permitindo o acesso HTTP na porta 80 para navegação na web..."
sudo ufw allow http
echo
echo "Permitindo o acesso HTTPS na porta 443 para navegação segura na web..."
sudo ufw allow https
echo
echo "Permitindo o acesso remoto via TeamViewer na porta 5938 (TCP)..."
sudo ufw allow from any to any port 5938 proto tcp
echo
echo "Permitindo o acesso remoto via AnyDesk na porta 7070 (TCP)..."
sudo ufw allow from any to any port 7070 proto tcp
echo
echo "Habilitando o Uncomplicated Firewall (UFW) com todas as regras configuradas..."
sudo ufw enable
echo
echo "Status do UFW após a configuração:"
sudo ufw status verbose

