#!/usr/bin/env bash
# Objetivo de escanear subnet SolinfNet de acordo com o que o usuario informar
function scan_network()
{
  if ! command -v nmap &> /dev/null; then
    echo "O nmap não está instalado. Por favor, instale-o primeiro."
    exit 1
  fi
# Solicita ao usuário que insira o intervalo de IP a ser escaneado
  read -p "Digite o intervalo de IP (exemplo: 192.168.1.1-254): " ip_range
# Executa o escaneamento usando o nmap
  echo "Escaneando a rede em busca de hosts ativos..."
  nmap -sn $ip_range

  echo "Escaneamento concluído."
}

