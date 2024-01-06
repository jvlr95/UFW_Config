#!/usr/bin/env bash
# Script desenvolvido por João Rodrigues - Contato: jvitor.lr@hotmail.com
# #Programa desenvolvido para automatizar configuração do fiwareall - Uncomplicated Firewall - ufw - Esse script permitir configurar o firewall para serviços basicos de um usuario, liberação de acessos SSH, FTP, liberação de navegação de internet, acessos remotos através do Teamviewer, anydesk e para serviços avançados em ambientes Kubernetes usando Kubeadm
# Versão: 2.0
# Este script destina-se a usuários intermediários e avançados que estão utilizando o Kubernetes com kubeadm para estudos ou em ambientes de produção.

#--Definir cores no MENU
red='\033[0;31m'
green='\033[0;32m'
orange='\033[0;33m'
close='\033[0m'

# Testa usuário root
[[ "$UID" -ne "0" ]] && { echo -e "${red}\nExecute como root!${close}" ; exit 1; }

echo -e "${orange}\nDefinindo a política padrão para bloquear todas as conexões de entrada...${close}"
ufw default deny incoming
echo -e "${orange}\nDefinindo a política padrão para permitir todas as conexões de saída...${close}"
ufw default allow outgoing
echo -e "${orange}\nPermitindo o acesso SSH...${close}"
ufw allow ssh
echo
echo -e "${orange}\nPermitindo o acesso FTP na porta 21 (controle)...${close}"
ufw allow 21/tcp
echo -e "${orange}\nPermitindo o acesso FTP na porta 21 (dados, se necessário)...${close}"
ufw allow 21/tcp
echo -e "${orange}\nPermitindo o acesso HTTP na porta 80 para navegação na web...${close}"
ufw allow http
echo -e "${orange}\nPermitindo o acesso HTTPS na porta 443 para navegação segura na web...${close}"
ufw allow https
echo -e "${orange}\nPermitindo o acesso remoto via TeamViewer na porta 5938 (TCP)...${close}"
ufw allow from any to any port 5938 proto tcp
echo -e "${orange}\nPermitindo o acesso remoto via AnyDesk na porta 7070 (TCP)...${close}"
ufw allow from any to any port 7070 proto tcp

# Adicione estas linhas
echo -e "${orange}\nPermitindo o acesso Kubernetes API Server na porta 6443...${close}"
ufw allow 6443/tcp

echo -e "${orange}\nPermitindo o acesso às portas do Kubelet (10250-10255)...${close}"
ufw allow 10250:10255/tcp

echo -e "${orange}\nPermitindo o acesso às portas NodePort Services (30000-32767)...${close}"
ufw allow 30000:32767/tcp

echo -e "${orange}\nPermitindo o acesso ao etcd nas portas 2379-2380...${close}"
ufw allow 2379:2380/tcp

echo -e "${orange}}\nHabilitando o Uncomplicated Firewall (UFW) com todas as regras configuradas...${close}"
ufw enable
echo -e "${red}\nStatus do UFW após a configuração:${close}"
ufw status verbose

