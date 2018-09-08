<!--
.. title: Introducción a Spark
.. slug: introduccion-a-spark
.. date: 2018-09-08 15:15:18 UTC-03:00
.. tags: spark, distributed systems, programming, big data
.. category: distributed systems
.. link: 
.. description: Algunos conceptos sobre Apache Spark
.. type: text
-->

Apache Spark es un framework de procesamiento muy de moda en entornos de procesamiento para Big Data, IoT y Machine Learning.

## Pipeline

El pipeline de trabajo en spark es conocido como **DAG** (Directed Acyclic Graph) y se basa en armar un grafo de trabajo donde las tareas se sucedan unas a otras segun se establezca.

Ademas, propone que muchas operaciones que en MapReduce involucran operaciones de entrada salida a disco, se hagan en memoria principal, lo que genera un rendimiento mayor comparado con su predecesor.

## Lenguajes

Spark acepta Java, Scala, Python y R, aunque no todos estan soportados de la misma forma y de manera completa.

## Otras herramientas

Spark ofrece ademas una consola interactiva para Scala, Python y R con capacidades **REPL** (Read, Evaluate, Print y Loop).

Ademas del core, Spark ofrece algunas librerias para tareas comunes en el ambito de big data: *SparkSQL*, *Spark Streaming*, *Spark MLlib* y *Spark GraphX*.

## Arquitectura

![Arquitectura Spark](/img/blog/2018/spark-arquitectura.png "Arquitectura de Spark")