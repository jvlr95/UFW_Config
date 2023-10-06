#!/usr/bin/env bash
#Autor Joao Rodrigues
#Programa para automatizar configuracao de display
#
read -p "Informe qual será o display:" output_xrandr
read -p "Informe a resolução:" resolucao
read -p "Informe o framerate:" frame_rate

echo "Configurando a resolução e frame rate para o usuario!"
xrandr --output $output_xrandr --mode $resolucao --rate $frame_rate 
