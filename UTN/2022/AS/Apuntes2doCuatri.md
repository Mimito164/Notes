- [Apuntes segundo cuatrimetre](#apuntes-segundo-cuatrimetre)
  - [DER (Diagrama Entidad Relacion)](#der-diagrama-entidad-relacion)
    - [Teoria (Powerpoint)](#teoria-powerpoint)
    - [Entidades](#entidades)
      - [Supertipo - Subtipo](#supertipo---subtipo)
    - [Relaciones](#relaciones)
      - [Relacion M:M](#relacion-mm)
  - [CPM - PERT (Critical Path Method - Program Evaluation and Review Technique)](#cpm---pert-critical-path-method---program-evaluation-and-review-technique)
    - [Teoria (Powerpoint)](#teoria-powerpoint-1)
    - [Margen Total](#margen-total)
    - [Intervalo de Flotamiento](#intervalo-de-flotamiento)
    - [Camino Critico](#camino-critico)
    - [Dependencias](#dependencias)
  - [Gantt](#gantt)
  - [Costos](#costos)
  - [Ciclos de Vida](#ciclos-de-vida)
    - [Ejemplos](#ejemplos)

# Apuntes segundo cuatrimetre

## DER (Diagrama Entidad Relacion)

### Teoria (Powerpoint)

Modelo Conceptual o <br> Preeliminar de Datos| Modelo Logico de Datos | Modelo Fisico de Datos
:--: | :--: | :--:
Define las caracteristicas del negocio en terminos de datos en forma independiente de la tecnologia de implementacion del SI | Define la solucion tecnologica, tomando como base el modelo conceptual de datos, optimizando el uso de los mismos | Define la configuracion del modelo logico de datos en un ambiente fisico en particular

* El DER que solamente presenta el nombre de las entidades y sus relaciones **sin los atributos** es el modelo **CONCEPTUAL**.
* El DER que tiene el nombre de las entidades, sus relaciones y ademas sus atributos, es el modelo logico

Caracteristica | Conceptual | Logico | Fisico
:--: | :--: | :--: | :--:
Nombre de Entidad | x | x  
Relaciones | x | x
Atributos | | x |
PK | | x | x
FK | | x | x
Nombre de Tablas | | | x
Nombre de Columnas | | | x
Tipo de dato de Columnas | | | x


### Entidades

* Las entidades tienen los siguientes tipos de atributos:
  * $*$ atributo necesario u obligatorio.
  * $o$ atributo opcional
  * $\#$ atributo identificador


* Los identificadores deben ser:
  * Minimo
  * Unicos
  * Familiares

#### Supertipo - Subtipo


* Es como herencia y delegacion.
* La entidad supertipo contiene todos los atributos comunes de las entidades subtipo.
* Las entidades subtipo tienen un *atributo discriminante*.


### Relaciones

* Las relaciones tienen **cardinalidad** y **modalidad**.
* La cardinalidad indica la cantidad de relacionados (uno o muchos).
* La modalidad indica si es necesario que exista una relacion o es opcinal (tiene o puede tener).

#### Relacion M:M

Cuando tenemos una relacion muchos a muchos se debe dividir la relacion con una entidad intermedia.

1. crear una entidad intermedia con el nombre EntidadA_EntidadB si no hay una mejor opcion.
2. En las entidades A y B queda cardinalidad **uno** y modalidad **tiene** osea ||.
3. La modalidad y cardinalidad de las relaciones que apuntan a la entidad intermedia, son iguales a la modalidad y cardinalidad que estaban antes en su respectiva direccion. 

## CPM - PERT (Critical Path Method - Program Evaluation and Review Technique)

* En el **CPM** se conoce la duracion de cada tarea.
* En el **PERT** se desconoce la duracion de cada tarea, en su reemplazo se realiza un calculo probabilistico de la duracion de la tarea.

$$\text{Duracion} = \frac{\text{Duracion optimista} + 4\cdot \text{Duracion Normal} + \text{Duracion Pesimista}} 6$$


### Teoria (Powerpoint)




### Margen Total

$$
\begin{align*}
    MT &= FFT - D - FIT\\
    MT&: \text{Margen Total}\\
    FFT&: \text{Fecha Fin Tardia}\\
    FIT&: \text{Fecha Inicio Temprana}\\
    D&: \text{Duracion}
\end{align*}
$$

### Intervalo de Flotamiento

$$
\begin{align*}
    IF &= FTa - FTe\\
    IF&: \text{Intervalo de Flotamiento}\\
    FFT&: \text{Fecha Tardia}\\
    FIT&: \text{Fecha Temprana}
\end{align*}
$$


### Camino Critico

* Es el camino de tareas criticas.
* Una tarea es critica cuando $MT=0$, y sus nodos el intervalo de flotamiento es 0, osea que la fecha de inicio temprana y la tardia son iguales
* Definen la duracion del proyecto
* **Siempre** hay por lo menos un camino critico

### Dependencias

* Si un nodo depende de dos tareas **no** puede haber dos tareas hacia el mismo nodo.
* Se crea una tarea ficticia o *dummy* la cual no consume recursos ni tiempo.

## Gantt

Nada para destacar...

## Costos

Nada para destacar...

## Ciclos de Vida

*Se denomina al tiempo comprendido entre el momento en el que se comienza la idea del desarrollo de software hasta que el mismo se da de baja*


Nombre | Cuando se Usa | Plazo de Entrega | Ventajas | Desventajas | RRHH | Documentacion | Requerimientos
:---- | :---- | :---- | :---- | :---- | :---- | :---- | :----
**Cascada Puro** | - Producto complejo pero estable<br />- Se conoce la técnica correctamente | Largo | - Se revisa cada etapa <br />- Si no esta lista no se pasa a la siguiente | **No es flexible** | Cualquiera, se puede capacitar | Constante, lleva tiempo | Bien Definidos
C**ascada con sudivision de Proyectos** | Sigue el modelo de ciclo de vida en CASCADA | Cada CASCADA, se dividen en subetapas independientes que se pueden ejecutar en paralelo 👍| RRHH trabajando en **//** | Pueden existir dependencias que frenen el proyecto | Se requiere un buen administrador de proyecto | - Constante<br />- *Cada etapa recibe la documentación de la etapa anterior?*| Bien definidos, retroceder a una etapa anterior es costoso
**Code & Fix** | - Pocas tareas <br />- No hay otra elección<br />- Fácil de implementar | Corto plazo | No tiene grdes requerimientos | - No permite eliminar riesgos <br /> - No genera producto mantenible y escalable | Variado (Cualquiera) | Escasa | Al principio del ciclo, y no están bien definidos. Se prioriza comenzar a codificar
**Prototipado Evolutivo** | Requisitos variables | Feedback con el cliente | Facilidad de adaptarse a los cambios de requisitos | - Dificultades para el mantenimiento <br /> - Poca estimasion presupuestaria | Sr y SSr | Poca a moderada | No tienen porque estar definidos al principio del ciclo
**Iterativo Incremental** | Generalmente usado por firmas comerciales | Mediano Plazo | - Se reducen las posibilidades de que el sistema cambie durante el desarrollo <br /> - ADAPTABILIDAD | Poca tolerancia a fallas, seguridad y procesamiento distribuido | Sin limitaciones | **Exhaustiva** | Definidos desde el comienzo del ciclo
**Orientado a la Planificacion** | Cuando existe un **DEADLINE** | Fecha establecida | - Prioridades bien definidas <br /> - Habrá “algo funcionando cuando llegue la fecha”. | Las funciones que tienen poca prioridad estan poco definidas | Gran experiencia en planificacion | **Exhaustiva** | Definidos desde el comienzo del ciclo 
**Espiral** | Enfoque dirigido por el RIESGO para el ANALISIS y DESARROLLO | - Cada iteración, determina los objetivos, alternativas y restricciones <br /> - Identifica y resuelve riesgos <br/>- Evalúa alternativas<br/>- Desarrolla los entregables<br/>- Planifica la próxima iteración | - Trata de minimizar riesgos de definición de arquitectura, del uso de la tecnología, de aumento de costos <br/> - Permite combinar con otros ciclos de vida | - Necesita mucha coordinación y conocimiento de administración de proyectos <br> - Mayor costo y planeamiento en cada etapa| - Muy capacitados en la tecnologia <br> - PM con experiencia en planificacion | **Exhaustiva** | Tienen que estar bien definidos

### Ejemplos

.|.
:--: | :--:
Cascada | Homebanking
Cascada Sub De Proy | Linea de Autos
Code & fix | Sitio Web Educativo
Prototipado Evolutivo | E-Commerce
Incremental| Tango
Orientado a Planif| Juego
Espiral| Represa Hidroelectrica