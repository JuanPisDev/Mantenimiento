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

   
  Ejecuta el Script: ./mantenimiento_kali.sh

Revisa el log generado: cat log_mantenimiento_YYYY-MM-DD.log


Instalación y configuración de WSL con Ubuntu
Para este taller instalé WSL (Windows Subsystem for Linux) en mi computador con Windows 10/11. WSL me permite simular un entorno Linux desde Windows sin necesidad de usar máquinas virtuales. Es mucho más liviano, rápido y me permite ejecutar comandos y scripts como si estuviera en una distribución real de Linux.

Paso 1: Instalación de WSL
Abrí PowerShell como administrador y escribí el siguiente comando:

css

wsl --install
Este comando activó las funciones necesarias de Windows, instaló WSL 2 y descargó automáticamente la distribución de Ubuntu más reciente. Después de la instalación, el sistema me pidió reiniciar el computador.

Paso 2: Configuración de Ubuntu
Después del reinicio, se abrió una ventana de Ubuntu y me pidió que creara un nombre de usuario y una contraseña. Estos serán los datos que usaré dentro del entorno Linux.

Ejemplo:

sql

Enter new UNIX username: miusuario
New password:
Retype new password:
Una vez hecho esto, ya tenía acceso a un terminal Linux funcional dentro de Windows.

Paso 3: Verificar versión de WSL
Verifiqué que estuviera usando WSL 2 con el siguiente comando en PowerShell:

wsl --list --verbose
La salida fue:

pgsql

  NAME      STATE           VERSION
* Ubuntu    Running         2
Esto confirmó que mi instalación estaba usando la versión más reciente y compatible con el taller.

¿Por qué usé WSL?
Elegí usar WSL porque es ideal para este tipo de prácticas. Me permite usar comandos como bash, chmod, chown, pgrep, etc., directamente desde Windows, sin tener que instalar una máquina virtual pesada. Además, puedo integrar fácilmente mis archivos de Windows y compartirlos entre ambos entornos, lo cual me facilita mucho el trabajo.


