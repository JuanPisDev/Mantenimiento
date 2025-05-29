¿Qué es systemctl?

Systemctl es una herramienta de línea de comandos utilizada para gestionar systemd, el sistema de inicialización y gestor de sistemas para sistemas operativos Linux. Permite controlar servicios, procesos y otras unidades gestionadas por systemd, como habilitar o deshabilitar servicios, verificar su estado, reiniciarlos, etc. 

¿Qué hace? ¿Cómo se usa en un sistema Linux con systemd?

Systemd es un sistema init y gestor de sistemas para Linux. Gestiona servicios, daemons y otros procesos del sistema, incluyendo el inicio del sistema y la gestión de usuarios. La herramienta de línea de comandos systemctl se utiliza para interactuar con systemd, permitiendo iniciar, detener, habilitar o deshabilitar servicios, así como obtener información sobre el estado del sistema. 

WSL no usa systemd por defecto, por se uso pgrep como alternativa.



Ejemplos:
systemctl status apache2

systemctl start ssh

systemctl enable mysql
