# Gestión de Permisos y Usuarios en Linux

Este documento describe el proceso de creación de usuarios simulados y la gestión de permisos en un entorno Linux usando WSL (Ubuntu), como parte del taller de administración de sistemas operativos.

---

## 👥 Creación de usuarios

Se crearon dos usuarios ficticios con el comando `adduser`:

sudo adduser usuario1
sudo adduser usuario2

Se creó un archivo con permisos 777 (lectura, escritura y ejecución para todos):

sudo mkdir /home/usuario1/pruebas
sudo touch /home/usuario1/pruebas/archivo.txt
sudo chmod 777 /home/usuario1/pruebas/archivo.txt

ls -l /home/usuario1/pruebas

-rwxrwxrwx 1 root root 0 may 28 10:30 archivo.txt

Corrigimos los permisos y la propiedad del archivo:
sudo chmod 640 /home/usuario1/pruebas/archivo.txt
sudo chown usuario1:usuario1 /home/usuario1/pruebas/archivo.txt

 Impacto de permisos mal asignados
No aplicar correctamente los permisos puede tener consecuencias graves:

Usuarios sin privilegios podrían eliminar o modificar archivos sensibles.

Archivos ejecutables con permisos 777 pueden ser inyectados con código malicioso.

La integridad y privacidad de los datos se ve comprometida.

Por ello, es fundamental auditar y restringir los permisos al mínimo necesario.

Conclusión

La correcta gestión de usuarios y permisos es esencial en la administración de sistemas Linux. Este ejercicio permitió simular y corregir errores comunes mediante el uso de herramientas básicas como chmod, chown, adduser, ls -l y groups.
