<!--
.. title: Borrando Cosas Inutiles de Ubuntu (Versión 2024)
.. slug: borrando-cosas-inutiles-de-ubuntu-version-2024
.. date: 2025-03-26 21:52:24 UTC-03:00
.. tags: free space, disk usage
.. category:
.. link:
.. description:
.. type: text
-->

# Indice de la serie

1. [Primera parte](/blog/borrando-cosas-inutiles-de-ubuntu-version-2020)
1. [Segunda parte](/blog/borrando-cosas-inutiles-de-ubuntu-version-2024)

# Introducción

En está segunda parte de lo que ya se está convirtiendo en una seríe de posts,
se discutirán algunas estrategias avanzadas para recuperar espacio en disco.

Mi profesión es de programación, asi que muchas de las estrategias borran o
reducen el uso de herramientas especificas. Para ver algunas cosas mas utiles
tal vez te venga mejor mirar antes el [post anterior](/blog/borrando-cosas-inutiles-de-ubuntu-version-2020).

!!! danger
    Los comandos utilizados en este post **son destructivos** y en muchos casos **no se
    pueden deshacer**. Se aconseja leer con cuidado, no copiar y pegar, y aprender sobre
    cada comando comentado antes de ejecutarlo.

# Controlar el espacio en disco disponible

Siempre es bueno arrancar sabiendo cuanto espacio en disco tenemos para saber cuanto 
liberamos con los diferentes comandos:

```bash
df -h
```

Darle bola principalmente a la partición `/` y en caso de aparecer, a `/var` y `/usr`.

# Paquetes o programas de gran tamaño en APT

A veces perdemos la referencia de programas instalados pero que no estamos usando.

Con el gestor de paquetes APT manejando dependecias, podemos tener mucho software que
no recordamos instalar o directamente nunca instalamos explicitamente. Si queremos
hacer un listado de los paquetes por tamaño que ocupan, podemos ejecutar:

```bash
dpkg-query --show --showformat='${Package;-50}\t${Installed-Size}\n' | sort -k 2 -n | grep -v deinstall | awk '{printf "%.3f MB \t %s\n", $2/(1024), $1}' | less
```

Obtendremos una salida como la siguiente

```text
286,543 MB       libcusparse-dev-12-3
329,808 MB       typora
336,514 MB       linux-modules-extra-5.15.0-116-generic
336,517 MB       linux-modules-extra-5.15.0-117-generic
336,524 MB       linux-modules-extra-5.15.0-118-generic
336,524 MB       linux-modules-extra-5.15.0-119-generic
336,592 MB       linux-modules-extra-5.15.0-121-generic
336,593 MB       linux-modules-extra-5.15.0-122-generic
336,594 MB       linux-modules-extra-5.15.0-124-generic
336,652 MB       linux-modules-extra-5.15.0-125-generic
354,313 MB       google-chrome-stable
380,522 MB       libcufft-dev-12-3
429,920 MB       linux-modules-extra-6.5.0-44-generic
433,652 MB       linux-modules-extra-6.5.0-41-generic
449,160 MB       linux-modules-extra-6.8.0-40-generic
449,413 MB       linux-modules-extra-6.8.0-47-generic
449,449 MB       linux-modules-extra-6.8.0-45-generic
485,409 MB       linux-firmware
584,258 MB       rstudio
596,854 MB       libcublas-12-3
705,180 MB       zoom
907,500 MB       libcublas-dev-12-3
1497,791 MB      nsight-compute-2023.3.1
```

Aquí solo resta decidir que paquetes no deseo tener y quiero desinstalar.

!!! danger
    Nunca elimines un paquete que comience con `linux-` sin saber lo que estas haciendo.
    Se recomienda hacer el siguiente paso con aplicativos de uso comun o hayas instalado
    vos mismo.

Un ejemplo basado en la linea de arriba puede ser el siguiente

```bash
sudo apt purge typora zoom rstudio
```

Luego de cada borrado, puede ser util ejecutar

```bash
sudo apt autoremove
```

Este último comando libera dependencias huerfanas del paso anterior.

# Docker

Docker es una gran herramienta, tanto para deploy profesional como para tener software
corriendo en nuestro equipo con poca configuración. Sin embargo, el costo de ejecutarlo
sigue siendo alto. 

Existen 4 elementos de Docker con los que podemos toparnos que consumen mucho espacio
en disco:

 - Contenedores
 - Imagenes
 - Volumenes locales
 - Cache de construcción

Por suerte tenemos un comando que nos deja ver como estamos en este asunto

```bash
docker system df
```

La salida del comando en cuestión es similar a la siguiente

```text
TYPE            TOTAL     ACTIVE    SIZE      RECLAIMABLE
Images          0         0         0B        0B
Containers      0         0         0B        0B
Local Volumes   0         0         0B        0B
Build Cache     91        0         2.361GB   2.361GB
```

Obviamente las columnas `SIZE` y `RECLAIMABLE` son las relevantes. La última es
el espacio en disco que es posible conseguir sin destruir nada que estemos utilizando.
En el caso de la columna `SIZE` hay que tener mas cuidado, ya que puede haber cosas
en uso cuyo espacio ocupado sean necesarias para que funcione.

El comando que hace la magia es `system prune`

```bash
docker system prune
```

Dicho comando solo eliminará componentes que de algúna forma segura se determinen
que ya no se utilizan. Como siempre, cuidado de no eliminar nada importante.

Es importante notar que prune es una acción en muchos de los subcomandos de docker,
ademas de contar con `rm`. En dichos casos, siempre es aconsejable primero estudiar
que tenemos disponible:

```bash
docker container ls -a
docker volume ls
```

En todo caso borrar individualmente cosas que sepamos que no se están utilizando
via `docker <subcomadno> rm <HASH_DEL_COMPONENTE>`.

# Caché de Snap

Snap nunca nos dejará en paz. Si [en el primer post](/blog/borrando-cosas-inutiles-de-ubuntu-version-2020/)
habiamos visto que los instaladores iban dejando replicas viejas instaladas y
desactivadas, vaya a saber uno para que, investigando un poco mas podemos encontrar
que cada app tiene su caché, que muy lindo y util, pero si estamos desesperados
por espacio, puede venir bien reclamarlo y que las apps lo vayan consumiendo
lentamente.

!!! danger
    Como ya se dijo, cuidado. En este caso, borrar el contenido de este directorio
    no puede ocasionar ningun daño, pero si se copia mal la ruta, el principio del
    comando es `rm -rf` que puede ser muy destructivo. **No copiar y pegar, POR FAVOR**.

```bash
sudo sh -c 'rm -rf /var/lib/snapd/cache/*'
```

En un sistema instalado nuevo no tiene demasiado sentido, pero si la instalación
tiene varios años, capaz les sirve.

Como la vez anterior, espero que algo de esto les sirva.