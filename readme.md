# 🛡️ Resposta a Incidentes com Wazuh: SSH Brute Force & Reverse Shell

Este repositório documenta a simulação e a análise de um ataque de força bruta (CWE-307) seguido de estabelecimento de persistência, monitorado ativamente através do SIEM/XDR Wazuh em um ambiente de laboratório isolado.

## 📝 Resumo Executivo
O objetivo deste laboratório foi aplicar práticas de *Blue Team* na detecção e contenção de ameaças em um servidor Linux (Ubuntu). O cenário englobou a exploração de credenciais fracas via SSH, a execução de um *Reverse Shell* e a validação de regras de detecção e auditoria de integridade (FIM) para resposta rápida do SOC, alinhado aos frameworks NIST SP 800-61r3 e ISO/IEC 27002.

## 🏗️ Arquitetura do Ambiente
* **Atacante (Red Team):** Kali Linux
* **Vítima (Blue Team):** Ubuntu Server
* **Monitoramento:** Servidor Wazuh Manager 

## 🎯 Táticas, Técnicas e Procedimentos (TTPs) - MITRE ATT&CK
| Tática | Técnica (ID) | Descrição da Ação Simulada |
| :--- | :--- | :--- |
| **Acesso Inicial** | [T1110.001](https://attack.mitre.org/techniques/T1110/001/) | Password Guessing via SSH (Hydra) |
| **Execução** | [T1059.004](https://attack.mitre.org/techniques/T1059/004/) | Unix Shell (Acesso via bash) |
| **Comando e Controle** | [T1090](https://attack.mitre.org/techniques/T1090/) | Proxy / Reverse Shell (Netcat) |

## 🚨 Indicadores de Comprometimento (IoCs)
| Tipo de IoC | Valor | Contexto |
| :--- | :--- | :--- |
| **Comando** | `nc -e /bin/sh...` | Assinatura de execução do Reverse Shell |
| **Arquivo/Log** | `/var/log/auth.log` | Múltiplas falhas para o usuário `cliente` |

## 📚 Documentação Completa
O relatório detalhado contendo logs exatos, prints do dashboard do Wazuh e recomendações de hardening está disponível na pasta [`/docs`](./docs).
