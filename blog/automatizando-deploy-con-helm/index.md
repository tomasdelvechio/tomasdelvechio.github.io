<!--
.. title: Automatizando deploy con Helm
.. slug: automatizando-deploy-con-helm
.. date: 2018-04-28 16:22:28 UTC-03:00
.. tags:
.. category:
.. link:
.. description:
.. type: text
-->

# Automatizando Deploy con Helm

1. Tener un cluster kubernetes andando y corriendo (por ejemplo minikube)

```bash
$ minikube start
```

2. Instalar Helm y Tiller

Tiller es un servidor in cluster de helm (Se instala en el cluster). Para mas detalle, ver la [doc oficial](https://docs.helm.sh/using_helm/#quickstart).

```bash
$ helm init
Creating /home/tomas/.helm
Creating /home/tomas/.helm/repository
Creating /home/tomas/.helm/repository/cache
Creating /home/tomas/.helm/repository/local
Creating /home/tomas/.helm/plugins
Creating /home/tomas/.helm/starters
Creating /home/tomas/.helm/cache/archive
Creating /home/tomas/.helm/repository/repositories.yaml
Adding stable repo with URL: https://kubernetes-charts.storage.googleapis.com
Adding local repo with URL: http://127.0.0.1:8879/charts
$HELM_HOME has been configured at /home/tomas/.helm.

Tiller (the Helm server-side component) has been installed into your Kubernetes Cluster.

Please note: by default, Tiller is deployed with an insecure 'allow unauthenticated users' policy.
For more information on securing your installation see: https://docs.helm.sh/using_helm/#securing-your-helm-installation
Happy Helming!
```

 3. Actualizar Respositorio de Charts

Los programas que se instalan via Helm se llaman Charts. Antes de instalar un chart, se debe actualizar la lista de charts disponibles

```bash
helm repo update
Hang tight while we grab the latest from your chart repositories...
...Skip local chart repository
...Successfully got an update from the "stable" chart repository
Update Complete. ⎈ Happy Helming!⎈
```
