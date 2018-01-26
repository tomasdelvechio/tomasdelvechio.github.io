.. title: Algunas notas sobre Kubernetes
.. slug: algunas-notas-sobre-kubernetes
.. date: 2018-01-26 00:18:56 UTC-03:00
.. tags: cluster, orchestration, kubernetes, devops, deploy, containers
.. category: devops
.. link:
.. description:
.. type: text

# Kubernetes

Sistema para orquestación de cluster. Esto no es un tutorial, son notas sueltas
(personales) tomadas del [tutorial oficial](https://kubernetes.io).

## Sección 1: Crear un cluster

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

## Tutorial interactivo

Testear la version de minikube

	minikube version

Iniciar un cluster usando minikube

	minikube start



# Dudas

 + ¿Un cluster kubernetes sirve para deploy de una app unica o muchas apps
 pueden convivir en el?
