<!--
.. title: Borrando Cosas Inutiles de Ubuntu (Versión 2020)
.. slug: borrando-cosas-inutiles-de-ubuntu-version-2020
.. date: 2020-07-03 18:45:32 UTC-03:00
.. tags: free space, disk usage
.. category: 
.. link: 
.. description: 
.. type: text
-->

# Indice de la serie

1. [Primera parte](/blog/borrando-cosas-inutiles-de-ubuntu-version-2020)
1. [Segunda parte](/blog/borrando-cosas-inutiles-de-ubuntu-version-2024)

## Introducción

Nunca esta demás saber que cosas borrar para mantener el disco raíz lo mas libre posible. Hoy me encontré con el Disco raíz con un 86% de ocupación y me dispuse a buscar cosas para borrar.

```bash
$ df -h 
Filesystem      Size  Used Avail Use% Mounted on
...
/dev/sda1        38G   31G  5,0G  86% /
...
```

## Herramienta de diagnostico

Ok, que hacer? En primer lugar, un diagnostico. La primer mano nos la puede dar la aplicación `baobab`, que si mal no recuerdo siempre esta instalada (si tenes el escritorio por defecto de Ubuntu).

Se busca desde el launcher con ese nombre o "Analizador de Uso de Disco". Muestra las diferentes particiones y gráficos de forma cómoda directorios y sub-directorios:

![Baobab Screenshoot](/img/blog/2020/baobab-screenshot.png)

## Replicas de paquetes de Snap

Ya usando `baobab` investigo y encuentro que uno de los directorios que mas archivo tiene es `/var/lib/snapd/snaps`. Ahi me encuentro con lo siguiente:

```bash
$ ls -la /var/lib/snapd/snaps
total 6180056
drwxr-xr-x  3 root root      4096 jul  3 18:40 .
drwxr-xr-x 21 root root      4096 jul  3 18:55 ..
-rw-------  2 root root  57266176 jun 13 12:12 bitwarden_25.snap
-rw-------  1 root root  57257984 jun 29 21:35 bitwarden_26.snap
-rw-------  1 root root  57614336 mar 25 22:43 core18_1705.snap
-rw-------  1 root root  57618432 abr 30 14:28 core18_1754.snap
-rw-------  2 root root  63942656 jun 19 11:05 core20_634.snap
-rw-------  1 root root 101724160 jun  2 16:18 core_9289.snap
-rw-------  1 root root 101191680 jun 24 16:07 core_9436.snap
-rw-------  2 root root  61710336 feb 27 02:55 discord_108.snap
-rw-------  1 root root  60096512 mar 18 11:54 discord_109.snap
-rw-------  1 root root  93212672 jun 23 16:27 drawio_37.snap
-rw-------  1 root root  93224960 jun 28 21:35 drawio_38.snap
-rw-------  2 root root 193806336 may 14  2019 eclipse_40.snap
-rw-------  1 root root 220319744 mar 25 07:39 eclipse_48.snap
-rw-------  1 root root 208605184 mar 11 20:01 gitkraken_153.snap
-rw-------  1 root root 208609280 abr 22 20:45 gitkraken_154.snap
-rw-------  1 root root 147488768 may 30 12:22 gnome-3-26-1604_100.snap
-rw-------  1 root root 147501056 nov 17  2019 gnome-3-26-1604_98.snap
```

Las apps están descargadas y "backupeadas" por las dudas.

[Snap](https://snapcraft.io/) es una manera de instalar apps en Linux, fuertemente impulsada por Canonical. A veces es cómoda para instalar apps que no están en los repos clásicos o están en una versión desactualizada (via Apt).

Buscando un poco, se llega al siguiente comando:

```bash
$ snap list --all
Name                     Version                     Rev   Tracking          Publisher         Notes                                                           
bitwarden                1.18.0                      25    latest/stable     bitwarden✓        disabled                                                        
bitwarden                1.19.0                      26    latest/stable     bitwarden✓        -                                                               
core                     16-2.45.1                   9436  latest/stable     canonical✓        core                                                            
core                     16-2.45                     9289  latest/stable     canonical✓        core,disabled                                                   
core18                   20200311                    1705  latest/stable     canonical✓        base,disabled                                                   
core18                   20200427                    1754  latest/stable     canonical✓        base                                                            
core20                   20                          634   latest/stable     canonical✓        base                                                            
discord                  0.0.10                      108   latest/stable     snapcrafters      disabled                                                        
discord                  0.0.10                      109   latest/stable     snapcrafters      -                                                               
drawio                   13.3.1                      37    latest/stable     jgraph✓           disabled                                                        
drawio                   13.3.5                      38    latest/stable     jgraph✓           -                                                               
eclipse                  2019-03                     40    latest/stable     snapcrafters      disabled,classic
eclipse                  2019-12                     48    latest/stable     snapcrafters      classic
gitkraken                6.6.0                       154   latest/stable     gitkraken✓        -
gitkraken                6.5.4                       153   latest/stable     gitkraken✓        disabled
```

Si en la salida anterior se observa la ultima columna (Notes), se observa que hay muchas versiones en estado `disabled`. Así que en teoría se pueden borrar. El script que [se encuentra aca](https://superuser.com/a/1330590/341719) a mi me funciono joya (ojo que avisan que según el idioma del sistema por ahí lo tienen que tocar).

Dejo una versión del script acá:

```bash
#!/bin/bash
# Removes old revisions of snaps
# CLOSE ALL SNAPS BEFORE RUNNING THIS
set -eu

LANG=C snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        sudo snap remove "$snapname" --revision="$revision"
    done
```

También es una buena idea revisar programas ahí instalados y que no estés usando, y eliminarlos, por ejemplo, en mi caso había un par que no estaba usando y los elimine:

```bash
sudo snap remove krita gitkraken eclipse drawio bitwarden youtube-dl
```

Para este punto, y solo preocupándome por Snap, la situación estaba así:

```bash
$ df -h 
Filesystem      Size  Used Avail Use% Mounted on
...
/dev/sda1        38G   27G  8,5G  77% /
...
```

Recupere alrededor de 3.5 Gb.

## Logs is everywhere

El siguiente directorio que tenia bastante peso era el de logs. 4Gb de logs!!!!!

```bash
$ journalctl --disk-usage
Archived and active journals take up 3.7G in the file system.
```

El directorio principal de logs en un Ubuntu es `/var/log`, y dentro de dicho directorio, el journal (el log principal del sistema) era el que mas pesaba (casi el total). Ahí veo 2 problemas:

* Mala política de borrado de logs
* Porque se están llenando tanto?

Lo segundo es para pensarlo un poco e investigar, para el objetivo del post me voy a centrar en el primero punto.

### Política de borrado

La rotación de logs es una tarea automática que hace el sistema. Básicamente va creando archivos nuevos para loguear los eventos mas actuales, y deja como históricos los viejos archivos. Para consultar estos registros, se puede usar el comando `journalctl`. No me voy a detener en este comando que daría para un post entero. Solo decir que una primer configuración a editar es el tamaño del log del sistema. Esto se hace desde `/etc/systemd/journald.conf`:

Como root, editar ese archivo, cambiando la linea:

```ini
#SystemMaxUse=
```

por

```ini
SystemMaxUse=100M
```

Donde el valor después del signo igual, debería ser el tamaño que queremos que ocupe. En este caso,  100 Megas me parece un valor mas que razonable.

Para terminar de aplicar el cambio, hay que reiniciar el servicio:

```bash
$ sudo systemctl restart systemd-journald.service
$ journalctl --disk-usage
Archived and active journals take up 104.0M in the file system.
```

Perfecto. Si volvemos a mirar el espacio en disco:

```bash
$ df -h 
Filesystem      Size  Used Avail Use% Mounted on
...
/dev/sda1        38G   24G   13G  66% /
...
```

Perfecto. ¿Con que seguir?

## Cache de APT y Librerías sin uso

APT es la herramienta para gestión de paquetes de Ubuntu. Es típico que en el uso, genere una cache importante, y que en muchos casos queden librerías que ya no se utilizan y pueden borrarse. En mi caso no va a aportar demasiado porque estos comandos los suelo ejecutar con cierta regularidad, pero hay 3 parámetros que son muy útiles y es aconsejable ejecutarlos con cierta regularidad:

```bash
$ sudo apt clean
$ sudo apt autoclean
$ sudo apt autoremove
```

En el ultimo caso, puede querer eliminar paquetes y nos va a preguntar si estamos seguros. En general, no es problemático eliminarlos (aunque si no se esta seguro, ese ultimo comando podría no ejecutarse).

```bash
$ df -h 
Filesystem      Size  Used Avail Use% Mounted on
...
/dev/sda1        38G   23G   13G  65% /
...
```

En mi caso no ayudó mucho, pero puede ser útil este paso.

## Directorio /usr

Si no esta pasando nada raro, y excluyendo el `/home`, el directorio `/usr` debería ser uno de los directorios con mas "peso" en el gráfico de `Baobab`. Es normal y esperable, ya que todas las aplicaciones y librerías del sistema se encuentra allí.

En general no es aconsejable tocar ningún archivo de allí. En caso de tener alguna anomalía, es probable que pueda limpiarse eliminando el paquete o programa que la esta causando, pero no se aconseja eliminar archivos o sub directorios de forma directa en este caso.

## BleachBit

Para terminar el post, es interesante mencionar esta GUI, llamada [BleachBit](https://www.bleachbit.org/), que es lo mas parecido a CCleaner que tenemos los usuarios de Linux.

Tiene una forma de eliminar cosas del sistema (usar con cuidado) pero al estar centrado en el usuario,  nos haría ganar espacio en el `/home`. En caso de necesitarlo, es una buena opción.

Luego de borrar algunas cosas, la cantidad de disco ocupada finalmente fue la siguiente:

```bash
$ df -h 
Filesystem      Size  Used Avail Use% Mounted on
...
/dev/sda1        38G   23G   13G  64% /
...
```

Para mi suficiente, y no me llevo mucho tiempo. Espero que algo de esto les sirva.