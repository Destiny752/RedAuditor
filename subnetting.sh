#!/bin/bash

# ============================
# COLORES
# ============================

verde="\e[32m"
rojo="\e[31m"
azul="\e[34m"
amarillo="\e[33m"
reset="\e[0m"

# ============================
# VERIFICAR SI ipcalc ESTÁ INSTALADO
# ============================

if ! command -v ipcalc >/dev/null 2>&1; then
    echo -e "${rojo}Error: ipcalc no está instalado.${reset}"
    echo "Instálalo con: sudo apt install ipcalc"
    exit 1
fi

# ============================
# PEDIR RED
# ============================

read -p "Introduce la red (ej: 192.168.1.0/24): " red

echo
echo -e "${verde}Analizando red $red ...${reset}"
echo

# ============================
# MOSTRAR INFORMACIÓN
# ============================

resultado=$(ipcalc "$red")

echo -e "${azul}Información de la subred:${reset}"
echo "$resultado"

echo
echo -e "${amarillo}Hosts activos (si se quiere escanear):${reset}"
echo "Puedes usar:"
echo "nmap -sn $red"
