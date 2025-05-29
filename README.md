# Mantenimiento Kali Linux

Este script automatiza tareas básicas de mantenimiento para sistemas basados en Kali Linux. Incluye verificación de espacio en disco, limpieza de archivos temporales, chequeo de permisos inseguros y revisión del estado de servicios importantes como `apache2` y `sshd`.

## 🛠️ Funcionalidades

- **Generación de log**: Crea un archivo de registro con fecha (`log_mantenimiento_YYYY-MM-DD.log`) para documentar todas las acciones realizadas.
- **Espacio en disco**: Reporta el uso actual del disco.
- **Limpieza de archivos temporales**: Elimina archivos `.tmp` en un directorio simulado (`~/tmp_simulado`).
- **Chequeo de permisos de archivos**:
  - Verifica los permisos de los archivos en el directorio temporal.
  - Recomienda ajustar permisos si encuentra alguno con acceso total (`777`).
- **Estado de servicios esenciales**:
  - Verifica si los servicios `apache2` y `sshd` están activos mediante `pgrep`.

## 📂 Estructura del log

Cada sección del log incluye:

- `[ESPACIO EN DISCO]`: Resultado de `df -h`.
- `[ARCHIVOS TEMPORALES]`: Archivos `.tmp` eliminados.
- `[PERMISOS DE ARCHIVOS]`: Permisos actuales y sugerencias de cambio.
- `[ESTADO DE SERVICIOS - MÉTODO ALTERNATIVO]`: Procesos activos para `apache2` y `sshd`.

## 🚀 Uso

1. Asegúrate de tener permisos de ejecución:

   ```bash
   chmod +x mantenimiento_kali.sh
