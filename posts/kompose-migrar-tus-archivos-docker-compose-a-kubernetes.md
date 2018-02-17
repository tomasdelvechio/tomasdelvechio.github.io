<!--
.. title: Kompose: Migrar tus archivos Docker Compose a Kubernetes
.. slug: kompose-migrar-tus-archivos-docker-compose-a-kubernetes
.. date: 2018-02-04 16:28:51 UTC-03:00
.. tags: cluster, orchestration, kubernetes, devops, deploy, containers, kompose
.. category: devops
.. link:
.. description: Migrar apps desplegadas con Docker Compose a Kubernetes utilizando Kompose
.. type: text
-->

En un [post anterior](/blog/algunas-notas-sobre-kubernetes) desplegamos un
cluster de pruebas con contenedores usando [Kubernetes](https://kubernetes.io) y
[Minikube](https://github.com/kubernetes/minikube). Este esquema resulta util
cuando lo que se quiere es desplegar y escalar un contenedor.

Sin embargo, muchas aplicaciones Docker comenzaron a orquestarse utilizando mas
de un contenedor para hacer funcionar la misma. Por ejemplo, un contenedor con
un web server, otro para la base de datos relacional, y un tercero para una base
nosql.

Para este tipo de esquemas surgio docker-compose. Permitia de forma sencilla
administrar la configuracion varios contenedores en simultaneo cuya imagen
origen eran diferentes.

Para lograr un comportamiento similar con Kubernetes, existe la herramienta
[Kompose](http://kompose.io). Kompose nos permite tomar el contenido de un
archivo docker-compose.yml y realizar las mismas acciones, pero utilizando
Kubernetes.

## Uso basico

Como siempre, nos salteamos la parte de instalacion dado que es sencilla y se
encuentra documentada en la [pagina oficial](http://kompose.io/installation/).

Kompose es muy sencilla de utilizar. Puede hacer 2 tareas principales:

 * Tomar un archivo docker-compose.yml y convertirlo a archivos de configuracion
 de Kubernetes.
 * Ejecutar el archivo docker-compose.yml directamente sin generar nuevos
 archivos.

La forma mas sencilla de utilizar es la segunda, dado que contamos con un
proyecto con un archivo docker-compose.yml o en general conocemos ese formato
bastante. Entonces se ejecuta

	kompose up

y eso ya levanta con Kubernetes todos los contenedores indicados.
