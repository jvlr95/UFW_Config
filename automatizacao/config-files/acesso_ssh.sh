#!/usr/bin/env bash 
#--Funcao acesso ssh terminal
#--remote user solinfnet
function accesso_ssh()
{
  read -p "Informe endereço host: " ssh_address
  ssh "$remote_user"@"$ssh_address"
}


