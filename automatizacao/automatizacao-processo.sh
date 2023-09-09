#!/usr/bin/env bash
##Desenvolvido por Joao Rodrigues
#Programa com objetivo de automatizar pequenos processos do meu dia a dia
#Objetivo de auxiliar nos processos de acesso por SSH - Configuracoes de arquivos - Envio de arquivos pelo comando scp - 
#Versao 1.0

#--Testando user logado
[[ "$UID" -eq "0" ]] && { echo "Não execute como root!" ; exit 1 ;}

#--Variaveis globais
conf_local=".system-solinfnet/conf" #definir local para salvar .conf
sns_local=".system-solinfnet/key/" #definir local para salvar .key

#--Constantes
remote_conf="/localizacao/do/diretorio/arquivo.conf"  #diretorio remoto com localização .conf
remote_sns="/localizacao/do/diretorio/arquivo.key" #diretorio remoto com localizacao .key
remote_user="definir_usuario" #definir o usuario remoto para realizar acessos ssh 
local_user="$USER"

#--Source list 
source ./config-files/accesso_ssh
source ./config-files/scp_copy
source ./config-files/scan_network

#--Loop para executar atividades
PS3="Selecione serviço: "
select menu in "Acesso remoto (ssh)" "Copiar arquivos (scp)" "Escanear subnet SolinfNet" "Encerrar"; do
    clear
    #case que seleciona opcao do usuario
    case $REPLY in
      1)
        accesso_ssh
        ;;
      2)
        scp_copy 
        ;;
      3)
        scan_network
        ;;
      4)
        echo -e "Bye"
        exit 0
        ;;
      *)
        echo "Opção inválida. Tente novamente."
        ;;
    esac
    read -p "Pressione Enter para continuar..." menu
done
