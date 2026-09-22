# Encuesta Profesionales
## 1. Análisis univariado

**Shape**

13 respuestas

21 columnas

12 preguntas

columnas que no importan: 
* id_submission
* id_respondent
* timestamp
* email

Q5 tiene 6 columnas

---

**Q1: Años de experiencia**

|                                                    | n (Casos) | % (Porcentaje) |
| -------------------------------------------------- | --------- | -------------- |
| exp_anios                                          |           |                |
| Más de 5 años (Senior / Lead / Arquitecto / Staff) | 10        | 76.9           |
| Menos de 2 años (Trainee / Junior)                 | 2         | 15.4           |
| Entre 2 y 5 años (Semi-Senior)                     | 1         | 7.7            |

Fuerte sesgo de respuesta en perfiles seniors

**Q2: Ambito laboral**

|                                                                             | n (Casos) | % (Porcentaje) |
| --------------------------------------------------------------------------- | --------- | -------------- |
| **ambito**                                                                  |           |                |
| Empresa de producto propio (SaaS, fintech, startups, etc.)                  | 7         | 53.8           |
| Consultoría / Software Factory / Servicios de desarrollo a terceros         | 4         | 30.8           |
| Investigación aplicada / I+D / Data Science / Ámbito científico-tecnológico | 1         | 7.7            |
| Otro (Freelance, Sector público, etc.)                                      | 1         | 7.7            |

Abundancia de respuesta de la Industria

**Q3: Politica de la empresa ante la IA**

|                                                                                         | n (Casos) | % (Porcentaje) |
| --------------------------------------------------------------------------------------- | --------- | -------------- |
| **politica_empresa**                                                                    |           |                |
| Obligatorio o activamente promovido (la empresa provee licencias y espera su adopción). | 6         | 46.2           |
| Permitido y fomentado (a discreción de cada desarrollador).                             | 4         | 30.8           |
| No existe una política formal definida.                                                 | 3         | 23.1           |

La mayoria de las organizaciones adoptaron alguna postura activa

**Q4: Frecuencia de uso de la IA**

|                                                                           | n (Casos) | % (Porcentaje) |
| ------------------------------------------------------------------------- | --------- | -------------- |
| **frecuencia_ia**                                                         |           |                |
| Diario / Intensivo (integrado de forma continua en mi IDE).               | 9         | 69.2           |
| Frecuente (varias veces por semana, para tareas puntuales o consultas).   | 3         | 23.1           |
| Ocasional (solo cuando me quedo trabado o explorando tecnologías nuevas). | 1         | 7.7            |

Profunda integración en el flujo de trabajo

**Q5: Riesgos percibidos al usar IA**

Pregunta de multiples respuestas

![[Pasted image 20260916204631.png]]

Resultado

|                         | Menciones (n) | % de profesionales |
| ----------------------- | ------------- | ------------------ |
| r_superficialidad       | 9             | 69.2               |
| r_deuda_tecnica         | 6             | 46.2               |
| r_estancamiento_juniors | 5             | 38.5               |
| r_alucinaciones         | 2             | 15.4               |
| r_seguridad             | 2             | 15.4               |
| r_ninguno               | 0             | 0.0                |

La distancia cognitiva con el artefacto generado por la IA es el mayor riesgo percibido, seguido por la deuda técnica y el estancamiento en aprendizaje (esta última se puede considerar corolario de la primera, ya que el uso y resultados sencillos invita a no involucrarse en las decisiones de diseño)

Ninguno de los encuestados considero que no existen riesgos.

¿Quiza los riesgos de seguridad escalarian mas si encuestamos abogados o gente de seguridad informatica? (hipotesis)

**Q6: Habilidad técnica considerada mas decisiva en entrevista**

La pregunta obligaba a elegir una sola respuesta

|                                                                                    | n (Casos) | % (Porcentaje) |
| ---------------------------------------------------------------------------------- | --------- | -------------- |
| **habilidad_decisiva**                                                             |           |                |
| Arquitectura de software, modelado del dominio y especificación de requerimientos. | 8         | 61.5           |
| Sólidos fundamentos de algoritmos, complejidad y estructuras de datos.             | 3         | 23.1           |
| Capacidad de leer, auditar y depurar código complejo escrito por otros (o por IA). | 1         | 7.7            |
| Fluidez y velocidad resolutiva mediante prompting y herramientas de IA.            | 1         | 7.7            |

La opinión esta inclinada hacia las áreas de análisis y diseño.

Un solo caso consideró como lo MAS importante velocidad de iteración con la IA.

**Q7: Impacto en la contratación de juniors**

|                                                                                                 | n (Casos) | % (Porcentaje) |
| ----------------------------------------------------------------------------------------------- | --------- | -------------- |
| **impacto_juniors**                                                                             |           |                |
| No tengo visibilidad directa sobre los procesos de contratación.                                | 7         | 53.8           |
| Se redujo drásticamente la contratación de perfiles iniciales (la IA absorbe tareas mecánicas). | 4         | 30.8           |
| Se sigue contratando, pero la vara de exigencia técnica y autonomía inicial es mucho más alta.  | 2         | 15.4           |


**Q8: Postura frente a la integración de la IA en el aula**

|                                                                                                                                          | n (Casos) | % (Porcentaje) |
| ---------------------------------------------------------------------------------------------------------------------------------------- | --------- | -------------- |
| **politica_docente**                                                                                                                     |           |                |
| Prohibición en evaluaciones: Se debe garantizar primero la comprensión manual de la sintaxis y la lógica algorítmica sin asistencia.     | 7         | 53.8           |
| Integración curricular obligatoria: Debe enseñarse a programar CON la IA desde el primer día (foco en especificar, verificar y auditar). | 6         | 46.2           |

Completamente dividida la opinión.

Se advierte que la pregunta es insuficiente porque hay un hueco entre la opción A (7 votos) y la B (6 votos), ya que la prohibición se aclara en examen.

La pregunta tenia una 3er opción que era libre albedrio para el uso, que nadie eligio.

**Q9: Perfil del graduado esperado**

Las opciones eran

![[Pasted image 20260916205654.png]]

La unica opción elegida fue la A.

|                                                                                             | n (Casos) | % (Porcentaje) |
| ------------------------------------------------------------------------------------------- | --------- | -------------- |
| **perfil_graduado**                                                                         |           |                |
| Opción A: Fuertes fundamentos teóricos y conceptuales, aunque no domine herramientas de IA. | 13        | 100.0          |

Parecería haber una postura unanime entre los encuestados de "ustedes enseñen lo dificil que de lo facil nos encargamos en el ambito laboral".

Tengamos ojo con la respuesta "politicamente correcta" (fue una encuesta corta, se hizo lo que se pudo).

---
## 2. Análisis bivariado

Algunos cruces entre variables

### 2.1. Uso de IA en trabajo vs Opinión sobre IA en aula

Pregunta subyacente: ¿Los que usan IA intesivamente que opinan de que la usen futuros colegas en su formación? y la opuesta ¿Quienes no la usan o lo hacen ocasional, opinaran que no se debe usar en el aula?

| politica_docente (Q8)                                                     | Integración curricular obligatoria | Prohibición en evaluaciones | All |
| ------------------------------------------------------------------------- | ---------------------------------- | --------------------------- | --- |
| **frecuencia_ia (Q4)**                                                    |                                    |                             |     |
| Diario / Intensivo (integrado de forma continua en mi IDE).               | 5                                  | 4                           | 9   |
| Frecuente (varias veces por semana, para tareas puntuales o consultas).   | 1                                  | 2                           | 3   |
| Ocasional (solo cuando me quedo trabado o explorando tecnologías nuevas). | 0                                  | 1                           | 1   |
| All                                                                       | 6                                  | 7                           | 13  |

El unico caso de uso ocasional opina que debe prohibirse en las evaluaciones (podemos llamarla cariñosamente la *postura ludita*)

Los que la usan a diario estan divididos casi a la mitad.

### 2.2. Politica de las organizaciones vs riesgos percibidos


| riesgos                                                                                     | r_superficialidad | r_deuda_tecnica | r_alucinaciones | r_estancamiento_juniors | r_seguridad | r_ninguno |
| ------------------------------------------------------------------------------------------- | ----------------- | --------------- | --------------- | ----------------------- | ----------- | --------- |
| **politica_empresa**                                                                        |                   |                 |                 |                         |             |           |
| **No existe una política formal definida.**                                                 | 1                 | 2               | 0               | 2                       | 1           | 0         |
| **Permitido y fomentado (a discreción de cada desarrollador).**                             | 3                 | 1               | 1               | 0                       | 1           | 0         |
| **Obligatorio o activamente promovido (la empresa provee licencias y espera su adopción).** | 5                 | 3               | 1               | 3                       | 0           | 0         |

Donde mas se usa la IA, se percibe con mayor riesgo el alejamiento cognitivo con el proyecto o la deuda técnica. Es relevante la baja percepción de problemas de seguridad.

### 2.3. Mercado de juniors vs Habilidad a la hora de tomar entrevistas


| habilidad_decisiva                                                                              | Arquitectura e Inf de Soft | Lectura de código de 3eros | Prompting e iteración rápida | Fundamentes de algoritmica y complejidad | **All** |
| ----------------------------------------------------------------------------------------------- | -------------------------- | -------------------------- | ---------------------------- | ---------------------------------------- | ------- |
| **impacto_juniors**                                                                             |                            |                            |                              |                                          |         |
| No tengo visibilidad directa sobre los procesos de contratación.                                | 3                          | 0                          | 1                            | 3                                        | **7**   |
| Se redujo drásticamente la contratación de perfiles iniciales (la IA absorbe tareas mecánicas). | 4                          | 0                          | 0                            | 0                                        | **4**   |
| Se sigue contratando, pero la vara de exigencia técnica y autonomía inicial es mucho más alta.  | 1                          | 1                          | 0                            | 0                                        | **2**   |
| **All**                                                                                         | **8**                      | **1**                      | **1**                        | **3**                                    | **13**  |

La caracteristica sobresaliente a considerar es la capacidad de definir la arquitectura y requerimientos de un sistema. Estas personas estan entrevistando juniors o avisando a RRHH que cosas deben valorarse a nivel técnico.

La habilidad de comprender profundamente algoritmos no es considerada por personas involucradas o con visibilidad en la contratación de juniors.

Una re-pregunta acá podría ser ¿Consideran que el criterio de la IA es mucho mejor que el de un programador con poca o nula experiencia?

### 2.4. Habilidad en la entrevista vs rol de IA en el aula


| politica_docente                                                                   | Integración curricular obligatoria | Prohibición en evaluaciones | All |
| ---------------------------------------------------------------------------------- | ---------------------------------- | --------------------------- | --- |
| habilidad_decisiva                                                                 |                                    |                             |     |
| Arquitectura de software, modelado del dominio y especificación de requerimientos. | 5                                  | 3                           | 8   |
| Capacidad de leer, auditar y depurar código complejo escrito por otros (o por IA). | 0                                  | 1                           | 1   |
| Fluidez y velocidad resolutiva mediante prompting y herramientas de IA.            | 0                                  | 1                           | 1   |
| Sólidos fundamentos de algoritmos, complejidad y estructuras de datos.             | 1                                  | 2                           | 3   |
| All                                                                                | 6                                  | 7                           | 13  |

Esta pregunta expone una postura dividida entre la tendencia herramental del aprendizaje y la solidez. 

Se observa que hay tendencia en quienes priorizan arquitectura parecen no tener problema con la integración y quienes valoran comprensión o lectura  de algoritmos prefieren la prohibición.

El caso de fluidez e iteración con IA prefiere la prohibición en evaluación. Parecería que este encuestado no considera relevante que esta habilidad sea abordada de forma integral en la curricula.

## 3. Construcción de perfiles

Perfiles:

- **El Pragmático de Alto Nivel** _(Filas 3, 7, 9, 10, 11 — 5 casos)_
    - _Variables:_ Senior | Uso Diario/Frecuente | **Integración** | **SRS y Arq**
    - _Postura:_ Asume que la codificación base quedó comoditizada. Si el uso en la industria ya es diario, la universidad debe integrar la herramienta para concentrarse en lo que la máquina no resuelve por sí sola: comprensión del problema, diseño de sistemas y arquitectura de software.

- **El Formador Protector** _(Filas 1, 6, 13 — 3 casos)_
    - _Variables:_ Senior | Uso Diario/Frecuente | **Prohibición** | **SRS y Arq**
    - _Postura:_ Vive la paradoja productiva: la utiliza a diario en su trabajo, pero pide prohibirla a nivel formativo. Considera que para tener criterio arquitectónico y definir requerimientos con rigor, primero hay que haber padecido la construcción manual del código sin atajos generativos.
    
- **El Fiel a las Bases** _(Filas 8, 12 — 2 casos)_
    - _Variables:_ Junior | Software Factory | **Prohibición** | **Solidez en Algorítmica**
    - _Postura:_ Desde la trinchera del inicio de carrera, percibe que la barrera de entrada real en el mercado sigue siendo la capacidad de resolver problemas algorítmicos. Defiende la prohibición en la enseñanza porque teme que el estudiante que delega en la IA nunca desarrolle la lógica mínima para subsistir en la industria.

**Casos singulares**

- **Fila 4 (Senior | Prohibición | Fluidez e IA):**
    Plantea una discordancia metodológica: considera que la habilidad decisiva es dominar la IA, pero elige la prohibición docente. Apunta a una postura del estilo "primero dominá el oficio sin muletas; la destreza con la herramienta se adquiere después".

- **Fila 5 (Semi-Senior | Integración | Solidez en Algorítmica):**
    El puente técnico. A diferencia de los seniors que apuntan a la arquitectura, rescata la algorítmica pero sin el reflejo prohibitivo: cree factible convivir con la herramienta mientras se ejercita el pensamiento algorítmico.

- **Fila 2 (Senior | Prohibición | Lectura de Código):**
    Pone el foco en la capacidad crítica de auditoría y revisión. Prohíbe la IA porque entiende que si el estudiante no escribe código desde cero, pierde la capacidad de leer, depurar y encontrar fallas en código ajeno o sintético.

## 4. Preguntas abiertas


=== ENCUESTADO 1 (Más de 5 años (Senior / Lead / Arquitecto / Staff) | Investigación aplicada / I+D / Data Science / Ámbito científico-tecnológico) ===
  (Q10 - Urgente cambiar): Integración de LLMs al programar, entiendo que proceso o procesos son necesarios definir para asegurar un uso eficiente y efectivo. Por ejemplo, producir una especificación, someterla a Pere review, separar la especificación en fases, planear cada fase antes de programar, y finalmente programarlas (en todos estos pasos el LLm puede asistir)

  (Q11 - Indispensable retener): El pensamiento algorítmico. Capacidad para resolver problemas independientemente del lenguaje que se utilice para implementarlo.

--------------------------------------------------------------------------------
=== ENCUESTADO 2 (Más de 5 años (Senior / Lead / Arquitecto / Staff) | Empresa de producto propio (SaaS, fintech, startups, etc.)) ===
  (Q10 - Urgente cambiar): Más arquitectura, más alto nivel en las soluciones a desarrollar

  (Q11 - Indispensable retener): Lógica de la programación en sí

--------------------------------------------------------------------------------
=== ENCUESTADO 3 (Más de 5 años (Senior / Lead / Arquitecto / Staff) | Empresa de producto propio (SaaS, fintech, startups, etc.)) ===
  (Q10 - Urgente cambiar): Creo que las cuestiones que tienen que ver con el proceso de diseño y implementación y mantención del software desde el punto de vista metodologíco. Sobre todo en lo que es la verificación del software y asegurar que el mismo pueda evolucionar.

  (Q11 - Indispensable retener): Me parece que la formación de base tiene que seguir estando. Si uno tiene buena disciplina de ingeniería la IA es una herramienta que amplifica.

--------------------------------------------------------------------------------
=== ENCUESTADO 5 (Entre 2 y 5 años (Semi-Senior) | Empresa de producto propio (SaaS, fintech, startups, etc.)) ===
  (Q10 - Urgente cambiar): El aprendizaje de código de memoria

  (Q11 - Indispensable retener): Fundamentos de programación, redes, bases de datos, recuperación de información, data Science

--------------------------------------------------------------------------------
=== ENCUESTADO 7 (Más de 5 años (Senior / Lead / Arquitecto / Staff) | Empresa de producto propio (SaaS, fintech, startups, etc.)) ===
  (Q10 - Urgente cambiar): Considero importante modificar el enfoque de cualquier trabajo práctico cuyo principal "desafío" sea "escribir código".

  (Q11 - Indispensable retener): Algoritmos, estructuras de datos, patrones de diseño, etc.

--------------------------------------------------------------------------------
=== ENCUESTADO 8 (Menos de 2 años (Trainee / Junior) | Consultoría / Software Factory / Servicios de desarrollo a terceros) ===
  (Q10 - Urgente cambiar): Trataría de prohibir el uso de IA, al menos en las primeras materias de la carreras relacionadas con ingeniera o licenciatura en informatica o carreras a fines.

  (Q11 - Indispensable retener): Fundamental las bases, sobre todo en las primeras materias de programación, sobre todo entender una tabla de verdad, comprensión lógica

--------------------------------------------------------------------------------
=== ENCUESTADO 9 (Más de 5 años (Senior / Lead / Arquitecto / Staff) | Consultoría / Software Factory / Servicios de desarrollo a terceros) ===
  (Q10 - Urgente cambiar): En la pregunta 8 respecto de la política docente, no puse "Prohibición en evaluaciones" puesto que considero primario la "Integración curricular obligatoria" de la IA. Dicho esto, sí considero que las evaluaciones parciales y finales deben realizarse, mayormente, en forma presencial y sin asistencia de IA.

Como primera medida, cada asignatura debería especificar de lleno una postura respecto del uso de IA, como por ejemplo alguna de las listadas en https://mtei.engineering.cornell.edu/genai-resources/

Como segunda medida, comenzar a debatir el reciente informe del MIT https://aiandeducation.mit.edu/report/. Destilar los principios guía y recomendaciones, adaptándolos al contexto de cada nivel, institución y/o carrera universitaria.

Finalmente, sí considero que ha quedado obsoleto el modelo _tradicional_ de "trabajo para el hogar", tanto teórico como práctico, a los efectos de lograr aprendizaje profundo. Puede que siga teniendo validez para mantener la dinámica educativa, e incluso para fomentar el uso de IA, pero debe quedar en segundo plano respecto de las actividades llevadas a cabo en clase.

  (Q11 - Indispensable retener): En lo que es programación / desarrollo en sí, aún considero relevantes el entendimiento de los diferentes paradigmas de programación, las estructuras de control, la capacidad de abstracción para la interpretación del dominio del problema y su traducción a _lo que sea_ (arquitectura, prompt, código, tests, ...), además de cuestiones de performance y disponibilidad que, aunque suelen dejarse de lado, terminan impactando en el resultado.

--------------------------------------------------------------------------------
=== ENCUESTADO 10 (Más de 5 años (Senior / Lead / Arquitecto / Staff) | Empresa de producto propio (SaaS, fintech, startups, etc.)) ===
  (Q10 - Urgente cambiar): Se debe enfocar más en resolución de problemas a nivel arquitectónico

  (Q11 - Indispensable retener): Arquitectura, diseños, etc.

--------------------------------------------------------------------------------
=== ENCUESTADO 11 (Más de 5 años (Senior / Lead / Arquitecto / Staff) | Otro (Freelance, Sector público, etc.)) ===
  (Q10 - Urgente cambiar): Arquitectura de Software, Diseño de Soluciones, tratar esos temas con mas profundidad

  (Q11 - Indispensable retener): Analisis Funcional, Especificacion de Requerimientos

--------------------------------------------------------------------------------
=== ENCUESTADO 12 (Menos de 2 años (Trainee / Junior) | Consultoría / Software Factory / Servicios de desarrollo a terceros) ===
  (Q10 - Urgente cambiar): Finalizando la carrera (teniendo buenas habilidades para programar), brindar materias para saber utilizar IA y comprender como funciona.

  (Q11 - Indispensable retener): Toda práctica que enseñe como funciona un sistema, como encararlo, y como programarlo desde cero.

--------------------------------------------------------------------------------
=== ENCUESTADO 13 (Más de 5 años (Senior / Lead / Arquitecto / Staff) | Empresa de producto propio (SaaS, fintech, startups, etc.)) ===
  (Q10 - Urgente cambiar): Luego de la formación inicial, debe fomentarse el uso de manera crítica y no como auto engaño para resolver cosas, de manera que ayude a terminar de comprender

  (Q11 - Indispensable retener): La IA puede escribir código pero no va a pensar por uno, por ello sería interesante reforzar la parte algoritmica, diseño de arquitectura, redes

--------------------------------------------------------------------------------




# Algunas reflexiones

1. No hay apocalipticos como si en otros espacios donde se debate sobre el tema.
2. La pregunta sobre urgente cambiar fue interpretada para 2 lados
	1. Hacia atras, sobre lo que esta mal y debe cambiarse
	2. Hacia adelante, hacia donde debe dirigirse el cambio

## De las preguntas abiertas


### 1. La devaluación irreversible del acto mecánico de "escribir código"

Escribir código se _commoditizo_ y no es valorado.

Existe un acuerdo rotundo en que memorizar sintaxis, implementar funciones aisladas o evaluar mediante consignas donde el desafío principal es teclear código **quedó obsoleto**. El centro de gravedad formativo debe desplazarse hacia los dos extremos del espectro:

- **Hacia arriba (Pulsión de cambio - Q10):** Mayor abstracción, arquitectura, especificación de requerimientos, diseño de procesos asistidos por IA y verificación metodológica.
- **Hacia abajo (Pulsión conservadora - Q11):** Lógica formal, pensamiento algorítmico, estructuras de datos y fundamentos de sistemas (redes, bases de datos, paradigmas).

### 2. La IA como multiplicador, nunca como sustituto cognitivo
Ningún profesional propone convertir la currícula universitaria en un taller de herramientas de moda ni en formación de *"prompt engineers"*. La premisa compartida es:  

> *La IA es un amplificador: si el estudiante cuenta con una sólida disciplina de ingeniería, la IA potencia su productividad; si carece de bases, la IA produce código superficial, deuda técnica y estancamiento formativo.*

### 3. La brecha generacional (Seniors vs. Juniors)

Se observa una disonancia según el seniority de los respondentes:

* **Los perfiles Senior / Lead:** Tendieron a un enfoque **metodológico y de gobernanza** (incorporar formalmente la IA, subir la vara hacia la arquitectura, reformar el sistema de evaluación y matar el TP domiciliario).

* **Los perfiles Junior / Trainee (E8 y E12):** Fueron paradójicamente los más **conservadores y prohibicionistas**; pidieron prohibir o postergar la IA hasta los años superiores. Hipotesis: Al haber transitado recientemente la curva de aprendizaje, reconocen en primera persona la tentación del "atajo cognitivo" y defienden el valor pedagógico de aprender a programar "a pie" y desde cero.

# 5. Contraste con encuesta de estudiantes

## 5.0. Descripción minima de la encuensta

**Shape**

20 respuestas al 16/09
31 respuestas al 22/09

9 columnas

6 preguntas

columnas que no importan: 
* id_submission
* id_respondent
* timestamp

Distribución académica de la muestra:
* Cursando 2do año sin empleo / ajeno a software: 14 (45.2%)
* Cursando 3er año en adelante: 10 (32.3%) — nuevo estrato incorporado el 22/09
* Cursando 2do año trabajando en IT: 6 (19.4%)
* Cursando 1er año: 1 (3.2%)

## 5.1. Estudiantes vs Profesionales

Comparación entre habilidad decisiva a ser evaluada en entrevistas (profesionales vs estudiantes)

|                                                                                                 | Profesionales (%) | Estudiantes al 16/09 (%) | Estudiantes al 22/09 (%) |
| ----------------------------------------------------------------------------------------------- | ----------------- | ------------------------ | ------------------------ |
| Arquitectura de software, modelado del dominio y especificación de requerimientos.              | 61.5 (n=8)        | 30.0 (n=6)               | 29.0 (n=9)               |
| Capacidad de leer, auditar y depurar código complejo escrito por otros (o por IA).              | 7.7 (n=1)         | 15.0 (n=3)               | 9.7 (n=3)                |
| Manejo fluido de herramientas modernas, asistentes de IA y rapidez para implementar soluciones. | 7.7 (n=1)         | 45.0 (n=9)               | 48.4 (n=15)              |
| Sólidos fundamentos de algoritmos, complejidad y estructuras de datos.                          | 23.1 (n=3)        | 10.0 (n=2)               | 12.9 (n=4)               |
|                                                                                                 | 100 (n=13)        | 100 (n=20)               | 100 (n=31)               |

Un impulso herramental sobre los estudiantes (los 15 que respondieron manejo fluido) pero hay una cantidad no menor que piensa que la Ing y Arq son relevantes.

Una minima porción considera relevante los fundamentos de algoritmica. Para los  estudiantes la programación ni siquiera es una _commodity_, es menos que eso.


## 5.2. Dilema curricular según perfil

Esta pregunta estaba espejada pero era ligeramente diferente en cada encuesta: Mientras que a los profesionales se les consultaba el enfoque para el perfil de graduados, a los estudiantes se les preguntaba por el enfoque curricular que tenian por delante.

|                                                                                                                                                                        | Profesionales | Estudiantes al 16/09 (%) | Estudiantes al 22/09 (%) |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------- | ------------------------ | ------------------------ |
| **enfoque_curricular_est** / **perfil_graduado**                                                                                                                       |               |                          |                          |
| Enfoque A: Priorizar fundamentos conceptuales, lógica formal y teoría computacional, asumiendo que las tecnologías y herramientas se aprenden luego por cuenta propia. | 100.0 (n=13)  | 40.0 (n=8)               | 48.4 (n=15)              |
| Enfoque B: Incorporar más tecnologías vigentes de mercado, frameworks populares y herramientas de IA aplicada, aunque se reduzca parte de la carga teórica.            | 0             | 60.0 (n=12)              | 51.6 (n=16)              |
| Total                                                                                                                                                                  | 100.0 (n=13)  | 100.0 (n=20)             | 100.0 (n=31)             |

El contraste es notable. Entre profesionales nadie priorizó la popularidad de una herramienta para ser lo que guie una curricula, mientras que en el caso de los estudiantes esto fue dividido prácticamente con paridad par ambos enfoques.

El grupo de 11 estudiantes de tercero tienen una visión similar a los profesionales.

## 5.3. Postura ante la IA en el aula

|                                                                                                                                          | Profesionales (%) | Estudiantes al 16/09 (%) | Estudiantes al 22/09 (%) |
| ---------------------------------------------------------------------------------------------------------------------------------------- | ----------------- | ------------------------ | ------------------------ |
| Integración curricular obligatoria: Debe enseñarse a programar CON la IA desde el primer día (foco en especificar, verificar y auditar). | 46.2 (n=6)        | 45.0 (n=9)               | 38.7 (n=12)              |
| Libre criterio del estudiante: Sin regulaciones docentes específicas; que cada uno decida si la utiliza y cómo.                          | 0.0               | 25.0 (n=5)               | 22.6 (n=7)               |
| Prohibición en evaluaciones: Se debe garantizar primero la comprensión manual de la sintaxis y la lógica algorítmica sin asistencia.     | 53.8 (n=7)        | 30.0 (n=6)               | 38.7 (n=12)              |
### conclusión al 16/09

Una baja cantidad de estudiantes opinó que las asignaturas no deberían intervenir en la utilización, planteando una mirada neutral sobre las herramientas.

Las mayorias se invierten entre estudiantes y profesionales. Mientras que la mayoría profesional se ubico en la postura prohibicionista, la mayoria de estudiantes opino a favos de la integración. El n chico no permite establecer ningún tipo de tendencia.

### conclusión post 22/09

Los integracionistas y los prohibicionistas estan completamente empatados con la incorporación de los 11 de 3ero. Esto indica que la incorporación de estudiantes con un año mas de trayectoría modificó la tendencia previa.



## 5.4. ¿Hay diferencias entre los estudiantes que trabajan y los que no lo hacen?

| trabaja_it                                                                                      | NO              | SI          |
| ----------------------------------------------------------------------------------------------- | --------------- | ----------- |
| **habilidad_decisiva_est**                                                                      |                 |             |
| Arquitectura de software, modelado del dominio y especificación de requerimientos.              | 21.428571 (n=3) | 50.0 (n=3)  |
| Capacidad de leer, auditar y depurar código complejo escrito por otros o por IA.                | 21.428571 (n=3) | 0.0         |
| Manejo fluido de herramientas modernas, asistentes de IA y rapidez para implementar soluciones. | 42.857143 (n=6) | 50.0 (n=3)  |
| Sólidos fundamentos de algoritmos, estructuras de datos y análisis de complejidad.              | 14.285714 (n=2) | 0.0         |
| TOTAL=                                                                                          | 100.0 (n=14)    | 100.0 (n=6) |

La distribución de respuestas es muy diferente. Es verdad que la proporción de estudiantes que ademas trabajan es pequeña como para esbozar tendencia. 

No se incorporan los resultados del 22/09 porque un mal diseño de la pregunta excluia gente de tercero que trabajara.

## 5.5. Brecha de percepción generacional estudiantil (2do año vs 3ero)

La última tanda de respuestas fue una asignatura de 3er año, esto permite hacernos preguntas sobre la diferencia entre estos grupos de estudiantes. Van algunos resultados entre ambos grupos

### 5.5.1. Modo de uso en el estudio

| ciclo                                                                                                                                    | 2do año (n=20) | 3er año en adelante (n=10) |
| ---------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------- |
| **uso_ia_estudio**                                                                                                                       |                |                            |
| Como generador de código: resuelve funciones o sintaxis que adapto; me ahorra tiempo pero a veces me cuesta entender la lógica de fondo. | 5.0 (n=1)      | 50.0 (n=5)                 |
| Como resolución integral: le entrego las consignas para que arme la solución y luego la reviso o entrego.                                | 0.0            | 10.0 (n=1)                 |
| Como tutor/explicador: le pido que me aclare conceptos o errores y acelera mi comprensión.                                               | 95.0 (n=19)    | 40.0 (n=4)                 |
Mas allá de los porcentajes, una tendencia que se puede ver es que la mayoria de los de 2do responden con lo que ellos consideran que los docentes quisieramos escuchar, mientras que los de tercero contestan mas divididos. Otra hipotesis es que los de 2do no saben usar la IA de maneras que los de 3ero si (hipotesis que necesitan ser verificadas)

### 5.5.2 Postura ante el uso de IA en el aula

| ciclo                                                                                                                                  | 2do año (n=20) | 3er año en adelante (n=10) |
| -------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------- |
| **politica_docente_est**                                                                                                               |                |                            |
| Integración curricular obligatoria: Debe enseñarse formalmente a programar CON IA (prompting técnico, verificación y lectura crítica). | 45.0 (n=9)     | 20.0 (n=2)                 |
| Libre criterio del estudiante: Sin regulaciones docentes específicas; que cada uno decida si la utiliza y cómo.                        | 25.0 (n=5)     | 20.0 (n=2)                 |
| Prohibición en evaluaciones: Se debe evaluar la capacidad de resolver algoritmos y sintaxis sin asistencia externa.                    | 30.0 (n=6)     | 60.0 (n=6)                 |
La distribución de respuestas fue completamente diferente. De nuevo, un uso mas abierto (sección 5.5.1.) parecería hacer tomar conciencia de que es necesario una instancia de evaluación con la IA ausente.

Otra interpretación es que los estudiantes de 2do dicen usarla como tutor, pero estan pidiendo que se reconozca la integración (tal vez como forma de transparentar otro uso)

### 5.5.3. Enfoque curricular preferido

| ciclo                                                                                                                                                                  | 2do año (n=20) | 3er año en adelante (n=10) |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------- | -------------------------- |
| **enfoque_curricular_est**                                                                                                                                             |                |                            |
| Enfoque A: Priorizar fundamentos conceptuales, lógica formal y teoría computacional, asumiendo que las tecnologías y herramientas se aprenden luego por cuenta propia. | 35.0 (n=7)     | 70.0 (n=7)                 |
| Enfoque B: Incorporar más tecnologías vigentes de mercado, frameworks populares y herramientas de IA aplicada, aunque se reduzca parte de la carga teórica.            | 65.0 (n=13)    | 30.0 (n=3)                 |
### 5.5.4. Habilidad en entrevistas técnicas


| ciclo                                                                                           | 2do año (n=20) | 3er año en adelante (n=10) |
| ----------------------------------------------------------------------------------------------- | -------------- | -------------------------- |
| **habilidad_decisiva_est**                                                                      |                |                            |
| Arquitectura de software, modelado del dominio y especificación de requerimientos.              | 35.0           | 20.0                       |
| Capacidad de leer, auditar y depurar código complejo escrito por otros o por IA.                | 15.0           | 0.0                        |
| Manejo fluido de herramientas modernas, asistentes de IA y rapidez para implementar soluciones. | 45.0           | 60.0                       |
| Sólidos fundamentos de algoritmos, estructuras de datos y análisis de complejidad.              | 5.0            | 20.0                       |


### (Análisis de la IA) Síntesis de la Brecha de Madurez (Ciclo Inicial vs Ciclo Superior)

1. **De la tutoría a la delegación:** Los estudiantes de 2do año usan la IA casi exclusivamente como tutor/explicador conceptual (**95.0%**), mientras que en 3er año en adelante el **60.0%** ya la utiliza para generar código o resolver problemas integralmente.
2. **Reflejo proteccionista en ciclo superior:** El **60.0%** de los estudiantes de 3er año en adelante pide **prohibir la IA en las evaluaciones de 1° y 2° año**, frente a sólo un **30.0%** en 2do año. Al haber superado el ciclo inicial, comprenden el riesgo del atajo cognitivo temprano y convergen plenamente con la postura mayoritaria de la industria.
3. **Revalorización de los fundamentos:** El **70.0%** de los estudiantes avanzados prioriza los fundamentos teóricos y conceptuales (Enfoque A), invirtiendo la preferencia de los estudiantes de 2do año, donde el **65.0%** demandaba frameworks y tecnologías de mercado.
