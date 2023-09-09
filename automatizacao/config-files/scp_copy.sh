#!/usr/bin/env bash
#--Funcao para comando scp
#--copiar arquivos do diretorio remoto
function scp_copy()
{
  read -p "Informe endereço host: " ssh_address #solicita ao usuario endereco IP para acesso SSH
  read -p "Informe qual arquivo quer copiar : (key ou conf)" _addchoise #solicita ao usuario qual arquivo deseja copiar localmente
  if [[ "$_addchoise" = "key" ]] ; then
    scp "$remote_user"@"$ssh_address":"$remote_sns" "$sns_local"
    echo "Arquivo de licença enviado para diretorio!"
  elif [[ "$_addchoise" = "conf" ]] ; then
    scp "$remote_user"@"$ssh_address":"$remote_conf" "$conf_local"
    echo "Arquivo .conf enviado para diretorio"
  else
    echo "Arquivo não encontrado, opções validas conf/key"
  fi
}


