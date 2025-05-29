#!/bin/bash

# Log
LOGFILE="log_mantenimiento_$(date +%F).log"
echo "Inicio de mantenimiento: $(date)" >> "$LOGFILE"

# Espacio en disco
echo -e "\n[ESPACIO EN DISCO]" >> "$LOGFILE"
df -h >> "$LOGFILE"

# Borrar archivos temporales
DIR_TMP=~/tmp_simulado
mkdir -p $DIR_TMP
touch $DIR_TMP/ejemplo.tmp
echo -e "\n[ARCHIVOS TEMPORALES]" >> "$LOGFILE"
find $DIR_TMP -type f -name '*.tmp' -print -delete >> "$LOGFILE"

# Verificación de permisos
echo -e "\n[PERMISOS DE ARCHIVOS]" >> "$LOGFILE"
for file in $DIR_TMP/*; do
  [ -f "$file" ] || continue
  perms=$(stat -c "%a %n" "$file")
  echo "Archivo $perms" >> "$LOGFILE"
  if [[ "$perms" == 777* ]]; then
    echo "SUGERENCIA: cambiar permisos de $file con chmod 640" >> "$LOGFILE"
  fi
done

# Verificación de servicios (sin usar systemctl)
echo -e "\n[ESTADO DE SERVICIOS - MÉTODO ALTERNATIVO]" >> "$LOGFILE"
pgrep -a apache2 >> "$LOGFILE"
pgrep -a sshd >> "$LOGFILE"

echo -e "\nFin del mantenimiento: $(date)" >> "$LOGFILE"
