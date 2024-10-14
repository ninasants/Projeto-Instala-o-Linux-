#!/bin/bash

# Definir o nome do serviço
SERVICE="nginx"

# Definir o diretório onde os logs serão salvos
LOG_DIR="/root/logs/"

# Criar o diretório, se não existir
mkdir -p "$LOG_DIR"

# Capturar a data e hora atuais
DATE=$(date '+%Y-%m-%d %H:%M:%S')

# Verificar o status do serviço
if service "$SERVICE" status; then
    # Se o serviço estiver rodando
    STATUS="ONLINE"
    echo "$DATE - $SERVICE Status: $STATUS - O serviço está rodando perfeitamente!" >> "$LOG_DIR/status_online.log"
else
    # Se o serviço estiver parado
    STATUS="OFFLINE"
    echo "$DATE - $SERVICE Status: $STATUS - O serviço está parado!" >> "$LOG_DIR/status_offline.log"
fi
