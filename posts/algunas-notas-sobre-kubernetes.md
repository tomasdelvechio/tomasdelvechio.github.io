.. title: Algunas notas sobre Kubernetes
.. slug: algunas-notas-sobre-kubernetes
.. date: 2018-01-26 00:18:56 UTC-03:00
.. tags: cluster, orchestration, kubernetes, devops, deploy, containers
.. category: devops
.. link:
.. description:
.. type: text

# Kubernetes

![Logo Kubernetes](/img/blog/2018/logo-kubernetes.png "Logo de Kubernetes")

Sistema para orquestación de cluster. Esto no es un tutorial, son notas sueltas
(personales) tomadas del [tutorial oficial](https://kubernetes.io).

## 1. Crear un cluster

Kubernetes coordina un cluster para trabajar como una unica unidad. Para ello,
las apps necesitan ser empaquetadas en forma de containers.

2 Recursos:

 + Master: Coordinación y gestión el cluster
 + Nodes: Son los workers del cluster (puede ser vm o nodo físico)

Cada nodo tiene un Kubelet, un agente que coordina el nodo y maneja la
comunicación con el Master.

Cada nodo debe poder realizar operaciones de containers, usando Docker o rkt
(Debe tenerlo instalado).

Para debug se recomienda utilizar [Minikube](https://github.com/kubernetes/minikube).
Instala un cluster y facilita la configuracion de kubernetes (Instalarlo a mano
era complejo).

### Tutorial interactivo

Testear la version de minikube

	minikube version

Iniciar un cluster usando minikube

	minikube start

Linea de comandos de Kubernetes: `kubectl`.

Version de kubectl (Para verificar que esta instalado):

	kubectl version

Ver información de cluster

	kubectl cluster-info

Ver nodos del cluster

	kubectl get nodes

## 2. Crear deploys con kubectl

Una vez instalado Kubernetes, se deben crear aplicaciones en containers para ser
ejecutadas sobre el cluster. Para esto se definen instruccion que el master
ejecuta sobre los nodos.

Kubernetes Deployment Controller monitoriza las instancias y si se caen, las
regenera nuevamente.

### Tutorial interactivo

Correr un ejemplo

	kubectl run kubernetes-bootcamp \
		--image=docker.io/jocatalin/kubernetes-bootcamp:v1 \
		--port=8080

Ver la app en ejecucion

	kubectl get deployments

Generar un entrypoint al cluster (temporal para pruebas)

	kubectl proxy

## 3. Explorar la App

Un Pod es un conjunto de containers que ejecutan aplicaciones y sus recursos
asociados.

Los Pods son creados por Kubernetes al realizar el deploy de la app. Se crean
siempre en un nodo.

Operaciones mas usadas de `kubectl`:

	kubectl get
	kubectl describe
	kubectl logs
	kubectl exec

### Tutorial interactivo

Listar pods

	kubectl get pods

Para obtener información detallada de los Pods

	kubectl describe pods

Para acceder a los Pods, que funcionan en una red aislada y privada, se utiliza
el `proxy`:

	kubectl proxy

Dicho proxy expone temporalmente la red y permite la comunicación con el host.
Esto se utiliza para acceder a la API de los Pods y realizar consultas de forma
directa (Por ejemplo, usando el comando `curl`).

Para diversas operaciones con los pods, es necesario obtener el nombre que
Kubernetes le asigno al mismo. Un comando para hacer esto es:

	export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')

Para ver los logs:

	kubectl logs $POD_NAME

Todo lo que los proceso envien a stdout es expuesto como logs del pod.

Ejecutar comandos en un pod:

	kubectl exec $POD_NAME env

Abrir una consola en un POD:

	kubectl exec -ti $POD_NAME bash

## 4. Usar un servicio para exponer la App

Los Pods pueden ser reemplazados si es necesario. Desde que cada Pod tiene una
IP unica, las aplicaciones no deberian conocer dichas IPs para poder conectarse
a los Pods, porque estos puede "morir".

Los servicios en kubernetes proveen una abstraccion que permite establecer
politicas de acceso sobre un conjunto lógico de Pods.

Los servicios permiten que a los pods se les adjunten labels, con diferentes
objetivos (taggear versiones, separar versiones para test, debug y produccion).

### Tutorial interactivo

Listar servicios expuestos:

	kubectl get services

Exponer un servicio:

	kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080

Ver detalles de servicios:

	kubectl describe services/kubernetes-bootcamp

Ver que puerto fue abierto externamente:

	export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
	echo NODE_PORT=$NODE_PORT

Una vez expuesto, se puede consultar el servicio directamente con:

	curl host01:$NODE_PORT

Consultar los pods que estan etiquetados con un label particular:

	kubectl get pods -l run=kubernetes-bootcamp

El label en el caso anterior es `run=kubernetes-bootcamp`. Funciona
identicamente para consultar servicios:

	kubectl get services -l run=kubernetes-bootcamp

Obtener el nombre del POD

	export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
	echo Name of the Pod: $POD_NAME

Aplicar un nuevo label a un Pod:

	kubectl label pod $POD_NAME app=v1

Consultar el label recien aplicado:

	kubectl describe pods $POD_NAME
	kubectl get pods -l app=v1

Borrar un servicio:

	kubectl delete service -l run=kubernetes-bootcamp

## 5. Multiples instancias de una App

(Sigue aca)




# Dudas

 + ¿Un cluster kubernetes sirve para deploy de una app unica o muchas apps
 pueden convivir en el?
 + ¿Un Pod es equivalente a un container?
