#!/usr/bin/env bash
# Script desenvolvido por João Rodrigues - Contato: jvitor.lr@hotmail.com
# Programa desenvolvido para automatizar configuração do firewall - Uncomplicated Firewall - ufw
# Este script permite configurar o firewall para serviços básicos de um usuário, liberação de acessos SSH, FTP,
# liberação de navegação de internet, acessos remotos através do Teamviewer, Anydesk e para serviços avançados em ambientes Kubernetes usando Kubeadm

# Este script destina-se a usuários intermediários e avançados que estão utilizando o Kubernetes com kubeadm para estudos ou em ambientes de produção.

# Definir cores para o terminal
red='\033[0;31m'
green='\033[0;32m'
orange='\033[0;33m'
close='\033[0m'

# Verificar se o script está sendo executado como root
[[ "$UID" -ne "0" ]] && { echo -e "${red}\nExecute como root!${close}" ; exit 1; }

echo -e "${orange}\nDefinindo a política padrão para bloquear todas as conexões de entrada...${close}"
ufw default deny incoming
echo -e "${orange}\nDefinindo a política padrão para permitir todas as conexões de saída...${close}"
ufw default allow outgoing

# Permitir acesso SSH apenas da rede local (192.168.0.0/24) na porta 3390
echo -e "${orange}\nPermitindo o acesso SSH apenas da rede local (192.168.0.0/24) na porta 3390...${close}"
ufw allow from 192.168.0.0/24 to any port 3390 proto tcp

# Permitir acesso FTP apenas da rede local (192.168.0.0/24) na porta 21
echo -e "${orange}\nPermitindo o acesso FTP apenas da rede local (192.168.0.0/24) na porta 21 (controle e dados)...${close}"
ufw allow from 192.168.0.0/24 to any port 21 proto tcp

# Permitir acesso HTTP na porta 80 para navegação na web
echo -e "${orange}\nPermitindo o acesso HTTP na porta 80 para navegação na web...${close}"
ufw allow http

# Permitir acesso HTTPS na porta 443 para navegação segura na web
echo -e "${orange}\nPermitindo o acesso HTTPS na porta 443 para navegação segura na web...${close}"
ufw allow https

# Permitir acesso Kubernetes API Server na porta 6443
echo -e "${orange}\nPermitindo o acesso Kubernetes API Server na porta 6443...${close}"
ufw allow 6443/tcp

# Permitir acesso às portas do Kubelet (10250-10255)
echo -e "${orange}\nPermitindo o acesso às portas do Kubelet (10250-10255)...${close}"
ufw allow 10250:10255/tcp

# Permitir acesso às portas NodePort Services (30000-32767)
echo -e "${orange}\nPermitindo o acesso às portas NodePort Services (30000-32767)...${close}"
ufw allow 30000:32767/tcp

# Permitir acesso ao etcd nas portas 2379-2380
echo -e "${orange}\nPermitindo o acesso ao etcd nas portas 2379-2380...${close}"
ufw allow 2379:2380/tcp

# Habilitar o Uncomplicated Firewall (UFW) com todas as regras configuradas
echo -e "${orange}\nHabilitando o Uncomplicated Firewall (UFW) com todas as regras configuradas...${close}"
ufw --force enable

# Exibir o status do UFW após a configuração
echo -e "${red}\nStatus do UFW após a configuração:${close}"
ufw status verbose
