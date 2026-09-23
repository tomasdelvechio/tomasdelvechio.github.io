<!--
.. title: IA y Formación en Computación: Datos de la Industria y de las Aulas (2026)
.. slug: resultado-encuesta-ai-2026
.. date: 2026-09-22 20:00:00 UTC
.. status: private
.. has_math: true
-->

Este documento presenta una síntesis de los datos empíricos relevados en dos encuestas exploratorias administradas en septiembre de 2026: una a profesionales del desarrollo de software en la industria ($N=13$) y otra a estudiantes universitarios de carreras de computación ($N=31$). El propósito de este informe es ofrecer insumos concretos para el debate curricular y pedagógico entre docentes, investigadores y colegas del área de informática, evitando tanto el tecno-optimismo ingenuo como las posturas alarmistas.

---

## 1. Marco y Disparador Conceptual

El desembarco masivo de asistentes de código basados en modelos de lenguaje (LLMs) ha transformado la práctica profesional del desarrollo de software. En el ámbito formativo, este escenario reabre una discusión pedagógica de fondo: ¿dónde reside el esfuerzo cognitivo esencial para aprender a programar cuando la sintaxis y los algoritmos elementales pueden generarse de forma instantánea?

Una referencia pertinente para situar esta discusión proviene de la reflexión de Clay Shirky (*The New York Times*, agosto 2025) sobre la escritura y el aprendizaje:

> *"El aprendizaje es un cambio en la memoria a largo plazo; ese es el correlato biológico de lo que hacemos en el aula. Ahora que la mayor parte del esfuerzo mental vinculado a la escritura es opcional, un estudiante que corta y pega un trabajo está inscripto en una clase de cortar y pegar, no en una clase de historia."*

Trasladado a la computación: si escribir código mecánico se vuelve opcional o asistido en segundos, ¿qué habilidades deben garantizar las carreras universitarias y qué rol deben asumir las herramientas generativas en las aulas y evaluaciones? Para analizar estas preguntas a partir de evidencia local, se diseñaron dos instrumentos de consulta.

---

## 2. Alcance Metodológico y Características de las Muestras

Debido a la escala y la naturaleza no probabilística de las muestras, los datos deben interpretarse con cautela metodológica: constituyen **tendencias exploratorias e indicios cuali-cuantitativos**, no generalizaciones universales.

### Encuesta a Profesionales ($N=13$)
- **Años de experiencia:** Fuerte concentración en perfiles consolidados:
    - Más de 5 años (*Senior / Lead / Arquitecto / Staff*): **76.9%** ($n=10$)
    - Menos de 2 años (*Trainee / Junior*): **15.4%** ($n=2$)
    - Entre 2 y 5 años (*Semi-Senior*): **7.7%** ($n=1$)
- **Ámbito de desempeño:**
    - Empresa de producto propio (SaaS, fintech, startups): **53.8%** ($n=7$)
    - Consultoría / Fábrica de software / Servicios: **30.8%** ($n=4$)
    - I+D / Data Science / Ámbito científico-tecnológico: **7.7%** ($n=1$)
    - Otro (Freelance / Sector público): **7.7%** ($n=1$)

### Encuesta a Estudiantes ($N=31$)

La muestra estudiantil se consolidó en dos etapas (un primer corte inicial de $N=20$ al 16/09 y una ampliación con un curso de ciclo superior al 22/09 alcanzando $N=31$):

- Cursando 2° año sin empleo en software: **45.2%** ($n=14$)
- Cursando 3er año en adelante: **32.3%** ($n=10$)
- Cursando 2° año trabajando en el sector IT: **19.4%** ($n=6$)
- Cursando 1er año: **3.2%** ($n=1$)

---

## 3. La Perspectiva de la Industria: Adopción sin Ingenuidad

Los resultados desmienten cualquier presunción de rechazo tecnológico en las empresas, pero a la vez muestran una advertencia categórica respecto de sus consecuencias técnicas y formativas.

### 3.1. Nivel de uso y políticas organizacionales

| Frecuencia de uso en el trabajo (Q4) | n | % |
| :--- | :---: | :---: |
| Diario / Intensivo (integrado de forma continua en IDE) | 9 | 69.2% |
| Frecuente (varias veces por semana, tareas puntuales) | 3 | 23.1% |
| Ocasional (ante bloqueos o exploración) | 1 | 7.7% |
| **Total** | **13** | **100.0%** |

El **92.3%** ($n=12$) de los profesionales encuestados utiliza asistentes de IA con regularidad en su jornada de trabajo. A nivel de políticas empresariales:

- **46.2%** ($n=6$): Obligatorio o activamente promovido (la empresa provee licencias y espera su adopción).
- **30.8%** ($n=4$): Permitido y fomentado (a discreción de cada desarrollador).
- **23.1%** ($n=3$): No existe una política formal definida.
- Ninguna empresa prohíbe su uso.

### 3.2. Riesgos percibidos

En una pregunta de opción múltiple sobre riesgos al emplear IA en software:

| Riesgo percibido (Q5) | Menciones (n) | % de profesionales |
| :--- | :---: | :---: |
| **Mayor superficialidad** *(aprobación o integración de código sin comprenderlo a fondo)* | 9 | 69.2% |
| **Aumento de deuda técnica y código duplicado** | 6 | 46.2% |
| **Estancamiento del aprendizaje en perfiles junior** | 5 | 38.5% |
| **Alucinaciones / errores sutiles de lógica** | 2 | 15.4% |
| **Riesgos de seguridad o confidencialidad** | 2 | 15.4% |
| **Ningún impacto negativo** | 0 | 0.0% |

El **100% de los consultados reconoce riesgos**. La preocupación principal se sitúa en la **distancia cognitiva**: la pérdida de profundidad analítica al delegar código sin auditarlo exhaustivamente, y su corolario formativo en los perfiles novatos, muy por encima de inquietudes sobre propiedad intelectual o seguridad.

---

## 4. Habilidades Decisivas y Transformación del Perfil Inicial

Al indagar sobre la habilidad técnica más determinante al evaluar a un postulante en una entrevista técnica, las respuestas mostraron un fuerte desplazamiento hacia el análisis y diseño:

| Habilidad técnica más decisiva en entrevista (Q6) | n | % |
| :--- | :---: | :---: |
| **Arquitectura de software, modelado de dominio y especificación de requerimientos** | 8 | 61.5% |
| **Sólidos fundamentos de algoritmos, complejidad y estructuras de datos** | 3 | 23.1% |
| **Capacidad de leer, auditar y depurar código complejo escrito por otros o por IA** | 1 | 7.7% |
| **Fluidez y velocidad resolutiva mediante prompting y herramientas de IA** | 1 | 7.7% |
| **Total** | **13** | **100.0%** |

En cuanto al impacto directo en la contratación de perfiles iniciales (Q7), el **53.8%** ($n=7$) señaló no tener visibilidad sobre las decisiones de RRHH. Sin embargo, entre quienes sí intervienen en procesos de selección ($n=6$):

- **4 casos (30.8% del total de la muestra)** reportaron que se redujo drásticamente la contratación de perfiles junior porque la IA absorbe tareas mecánicas iniciales.
- **2 casos (15.4% del total de la muestra)** indicaron que se sigue contratando, pero con una vara de exigencia técnica y autonomía inicial significativamente más elevada.

La escritura mecánica de código tiende a comoditizarse; el diferencial laboral se traslada hacia las etapas previas al código (especificación formal, arquitectura) y posteriores (lectura crítica, auditoría y testing).

---

## 5. El Desencuentro de Expectativas: Profesionales vs. Estudiantes

Al contrastar las respuestas espejadas entre ambos grupos surgen tensiones de especial relevancia para la docencia universitaria.

### 5.1. Habilidad decisiva para la inserción laboral

| Habilidad técnica priorizada | Profesionales ($N=13$) | Estudiantes ($N=31$) |
| :--- | :---: | :---: |
| **Arquitectura, modelado y especificación** | **61.5%** ($n=8$) | **29.0%** ($n=9$) |
| **Fundamentos de algoritmos y complejidad** | **23.1%** ($n=3$) | **12.9%** ($n=4$) |
| **Lectura, auditoría y depuración de código ajeno/IA** | **7.7%** ($n=1$) | **9.7%** ($n=3$) |
| **Manejo fluido de herramientas modernas e IA** | **7.7%** ($n=1$) | 🔥 **48.4%** ($n=15$) |

Casi la mitad de los estudiantes considera que la destreza herramental y la velocidad de iteración con IA constituyen la llave principal de acceso al mercado. En contraste, el **84.6%** de los profesionales prioriza arquitectura o fundamentos algorítmicos, relegando el manejo de herramientas al plano de una competencia secundaria que se adquiere sobre la marcha.

### 5.2. El dilema curricular: Fundamentos teóricos vs. Tecnologías vigentes

Se consultó sobre la orientación curricular deseable (en profesionales, orientada al perfil de egreso; en estudiantes, a su trayectoria formativa):

| Enfoque Curricular Prioritario | Profesionales ($N=13$) | Estudiantes ($N=31$) |
| :--- | :---: | :---: |
| **Enfoque A: Fundamentos conceptuales, lógica formal y teoría** *(las herramientas se aprenden por cuenta propia)* | **100.0%** ($n=13$) | **48.4%** ($n=15$) |
| **Enfoque B: Tecnologías de mercado, frameworks e IA aplicada** *(aunque se reduzca carga teórica)* | **0.0%** ($n=0$) | **51.6%** ($n=16$) |

El consenso en los profesionales fue absoluto: la universidad debe enfocarse en los fundamentos de base duraderos. En el conjunto de estudiantes, en cambio, la preferencia se dividió casi en partes iguales.

#### La maduración de la perspectiva según el avance en la carrera
Al desagregar la muestra de estudiantes entre quienes cursan 2° año ($n=20$) y quienes transitan 3er año en adelante ($n=10$, excluyendo un caso de 1° año), se evidencia una notable convergencia hacia la postura de la industria:

| Enfoque curricular según ciclo estudiantil | 2° año ($n=20$) | 3er año en adelante ($n=10$) |
| :--- | :---: | :---: |
| **Enfoque A (Fundamentos conceptuales y teoría)** | 35.0% ($n=7$) | **70.0%** ($n=7$) |
| **Enfoque B (Frameworks y tecnologías de mercado)** | **65.0%** ($n=13$) | 30.0% ($n=3$) |

A medida que los estudiantes experimentan problemas de desarrollo más complejos en materias avanzadas, la demanda por "herramientas de moda" desciende a menos de la mitad y se revaloriza el marco conceptual.

---

## 6. La Grieta Táctica en el Aula: ¿Integrar o Prohibir?

Cuando se indaga cómo debe posicionarse la universidad frente al uso de IA en los primeros dos años de las carreras de computación, desaparece el consenso y emerge una división nítida.

### 6.1. Postura en la industria: División exacta

| Política docente sugerida para 1° y 2° año (Q8) | n | % |
| :--- | :---: | :---: |
| **Prohibición en evaluaciones:** Garantizar primero la comprensión manual de la sintaxis y la lógica algorítmica sin asistencia. | 7 | 53.8% |
| **Integración curricular obligatoria:** Enseñar a programar CON la IA desde el primer día, con foco en especificar, auditar y verificar. | 6 | 46.2% |
| **Libre criterio del estudiante:** Sin regulaciones específicas docentes. | 0 | 0.0% |

El análisis cualitativo de las respuestas permite identificar tres arquetipos conceptuales:

1. **El Pragmático de Alto Nivel** *(5 casos, perfiles senior con uso diario; eligen Integración + Arquitectura):*
   Asumen que la codificación elemental quedó comoditizada. Si en la práctica laboral la IA es de uso cotidiano, la universidad debe incorporarla formalmente para enseñar lo que la máquina no resuelve: modelado del problema, arquitectura del sistema y validación rigurosa.
2. **El Formador Protector** *(3 casos, perfiles senior con uso intensivo; eligen Prohibición + Arquitectura):*
   Encarnan una aparente paradoja: utilizan la IA diariamente en producción, pero reclaman prohibirla en la etapa formativa inicial. Su argumento es que para desarrollar criterio de diseño y capacidad de auditoría crítica es indispensable haber construido y depurado código a mano, sin atajos automáticos.
3. **El Fiel a las Bases** *(2 casos, perfiles junior en software factory; eligen Prohibición + Algoritmos):*
   Desde su experiencia de inserción reciente, advierten que la barrera de ingreso sigue demandando resolución algorítmica sólida. Temen que quien delegue prematuramente en la IA nunca consolide las estructuras de razonamiento lógico necesarias para sostenerse en el oficio.

### 6.2. La postura en los estudiantes y el modo de uso cotidiano

En el alumnado en general, las posturas ante el aula muestran una distribución tripartita:

- **38.7%** ($n=12$): Prohibición en evaluaciones.
- **38.7%** ($n=12$): Integración curricular obligatoria.
- **22.6%** ($n=7$): Libre criterio del estudiante.

Sin embargo, al desglosar por ciclo académico y observar la forma real en que utilizan la herramienta, afloran datos elocuentes:

| Pregunta / Comportamiento | 2° año ($n=20$) | 3er año en adelante ($n=10$) |
| :--- | :---: | :---: |
| **Uso de IA como generador de código o solución integral** | 5.0% ($n=1$) | **60.0%** ($n=6$) |
| **Uso de IA exclusivamente como tutor/explicador** | **95.0%** ($n=19$) | 40.0% ($n=4$) |
| **Apoyo a la prohibición de IA en evaluaciones** | 30.0% ($n=6$) | **60.0%** ($n=6$) |
| **Apoyo a la integración obligatoria** | **45.0%** ($n=9$) | 20.0% ($n=2$) |

En 2° año predomina la declaración del uso como tutor pedagógico (95%) y la solicitud de integración curricular. En 3er año en adelante, la mayoría reconoce utilizar la IA de forma directa para resolver o generar código (60%), pero simultáneamente **el 60% solicita prohibirla en las instancias de evaluación**. Al experimentar en primera persona la facilidad con que la IA resuelve ejercicios de programación, los propios estudiantes avanzados reclaman instancias evaluativas que acrediten conocimiento genuino sin asistencia externa.

---

## 7. Reflexiones para el Debate Colegiado

En las preguntas abiertas dirigidas a los profesionales sobre *qué cambiar de forma urgente* (Q10) y *qué retener de forma indispensable* (Q11), surgen dos vectores consistentes:

- **Hacia arriba (el cambio urgente):** Desplazar el foco pedagógico hacia el diseño formal, la arquitectura de sistemas, la verificación de software y los procesos metodológicos asistidos (revisión de requerimientos, especificación por fases, testing riguroso).
- **Hacia abajo (lo indispensable a preservar):** Sólida formación en lógica, estructuras de datos, pensamiento algorítmico independiente de la sintaxis y comprensión de fundamentos de computación (sistemas operativos, redes, bases de datos).

Un punto recurrente en los testimonios es la crisis de las consignas tradicionales cuyo único desafío era la escritura de código, y en particular, el agotamiento del modelo de trabajos prácticos domiciliarios:

> *"Considero importante modificar el enfoque de cualquier trabajo práctico cuyo principal 'desafío' sea 'escribir código'."*  
> — **Encuestado 7** (Senior / Lead · Empresa de producto)

> *"Ha quedado obsoleto el modelo tradicional de 'trabajo para el hogar', tanto teórico como práctico, a los efectos de lograr aprendizaje profundo (...). Las evaluaciones deben realizarse en forma presencial y sin asistencia de IA. Como primera medida, cada asignatura debería especificar de lleno una postura explícita."*  
> — **Encuestado 9** (Senior / Lead · Fábrica de software)

### Preguntas abiertas para la discusión curricular

1. **La paradoja de la formación artesanal:**  
   ¿Es viable desarrollar criterio arquitectónico y capacidad para auditar código complejo si se prescinde del esfuerzo artesanal de concebir, codificar y depurar algoritmos básicos a mano?
2. **El desajuste de expectativas:**  
   Ante una porción significativa del alumnado que busca en la universidad atajos herramentales, ¿cómo reforzamos el valor de la formación conceptual y formal sin desatender las dinámicas contemporáneas de la práctica profesional?
3. **El rediseño de la evaluación auténtica:**  
   Si la entrega de código fuera del aula ya no garantiza autoría ni asimilación cognitiva, ¿hacia qué dispositivos debemos avanzar? (Exámenes orales, defensas presenciales, resolución de problemas en pizarra, o diseños evaluativos donde la auditoría crítica de código generado sea la consigna explícita).
4. **La inserción de perfiles iniciales:**  
   Si la industria reduce las tareas rutinarias de nivel junior y eleva el estándar de autonomía requerido desde el primer día, ¿qué responsabilidades y articulaciones corresponden a la universidad para sostener la inserción laboral de sus graduados?
