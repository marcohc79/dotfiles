#!/bin/bash

# Verifica si los monitores externos están conectados
DP1_CONNECTED=$(swaymsg -t get_outputs | grep -q '"name": "DP-1"')
DP2_CONNECTED=$(swaymsg -t get_outputs | grep -q '"name": "DP-2"')
EDP_CONNECTED=$(swaymsg -t get_outputs | grep -q '"name": "eDP-1"')

# Si ambos monitores externos están conectados
if $DP1_CONNECTED && $DP2_CONNECTED; then
    # Deshabilita la pantalla de la laptop (eDP-1)
    swaymsg output eDP-1 disable
    # Habilita los monitores externos en las posiciones deseadas
    swaymsg output DP-2 enable position 0 0
    swaymsg output DP-1 enable position 1920 0
# Si solo el monitor externo DP-1 está conectado
elif $DP1_CONNECTED && ! $DP2_CONNECTED; then
    # Deshabilita la pantalla de la laptop (eDP-1)
    swaymsg output eDP-1 disable
    # Habilita solo el monitor DP-1
    swaymsg output DP-1 enable position 0 0
    swaymsg output DP-2 disable
# Si no hay monitores externos conectados, habilita solo la pantalla de la laptop
else
    # Habilita solo la pantalla interna de la laptop (eDP-1)
    swaymsg output eDP-1 enable position 0 0
    swaymsg output DP-1 disable
    swaymsg output DP-2 disable
fi
