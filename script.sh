#!/bin/bash

# Defina o diretório onde os arquivos de saída serão salvos
OUTPUT_DIR="/caminho/para/o/diretorio/de/saida"

# Crie o diretório se ele não existir
mkdir -p "$OUTPUT_DIR"

# Data e hora atual
DATETIME=$(date "+%Y-%m-%d %H:%M:%S")

# Nome do serviço
SERVICE="nginx"

# Verifica se o Nginx está em funcionamento
if systemctl is-active --quiet nginx; then
    STATUS="ONLINE"
    MESSAGE="O serviço $SERVICE está ONLINE."
    OUTPUT_FILE="$OUTPUT_DIR/nginx_online.log"
else
    STATUS="OFFLINE"
    MESSAGE="O serviço $SERVICE está OFFLINE."
    OUTPUT_FILE="$OUTPUT_DIR/nginx_offline.log"
fi

# Salva o resultado em um arquivo
echo "$DATETIME - $SERVICE - $STATUS - $MESSAGE" >> "$OUTPUT_FILE"
