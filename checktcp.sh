#!/bin/bash
# Portcheck
# Raul Liborio, rauhmaru@opensuse.org
# Uso:
# checktcp.sh HOST PORTAS
# 
# EXEMPLOS:
# checktcp.sh HOST {1..1024} - Verifica da porta 1 a 2014
# checktcp.sh HOST 21 22 23 53 - Verifica da porta 1 a 2014

echo "Verificando portas em $1..."
for PORT in $@;
do
  (echo >/dev/tcp/${1}/${PORT}) >/dev/null 2>&1 && echo "${PORT} aberta"
done
