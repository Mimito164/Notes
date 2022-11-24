
<h1>Apuntes primer cuatrimetre </h1>

<h2>Tabla de Contenidos</h2>

- [DC - LE - DFD](#dc---le---dfd)
  - [Pasos a seguir para DC - LE - DFD](#pasos-a-seguir-para-dc---le---dfd)
  - [Diagrama de Contexto](#diagrama-de-contexto)
  - [Lista de Eventos](#lista-de-eventos)
  - [Diagrama de Flujo de Datos](#diagrama-de-flujo-de-datos)
    - [Reglas](#reglas)
- [Diccionario de Datos DD](#diccionario-de-datos-dd)
- [Tablas de Decicion](#tablas-de-decicion)
  - [Definicion de Procesos](#definicion-de-procesos)
  - [Tabla de Decicion](#tabla-de-decicion)
  - [Funciones](#funciones)
  - [Registros](#registros)
    - [Binario o limitado](#binario-o-limitado)
    - [Binario Extendido](#binario-extendido)
  - [Metodos de Construccion de Tablas](#metodos-de-construccion-de-tablas)
    - [Metodo Intuitivo](#metodo-intuitivo)
    - [Metodo Masivo](#metodo-masivo)
  - [Deputacion de Tablas](#deputacion-de-tablas)
    - [Combiancion Ilogica](#combiancion-ilogica)
    - [Reglas repetidas](#reglas-repetidas)
    - [Reglas contradictorias](#reglas-contradictorias)
    - [Redundancia con Valores Limitados.](#redundancia-con-valores-limitados)
  - [Tablas Encadenadas.](#tablas-encadenadas)
    - [Jerarquia abierta](#jerarquia-abierta)
    - [Jerarquia cerrada](#jerarquia-cerrada)


## DC - LE - DFD


* Son tecnicas de relevamiento, ergo, se usan en la etapa de relevamiento.
* Son complementarias entre si.
* Son herramientas que se utilizan para modelar sistemas.
* Se clasifican principalmente en tres categorias:

|Procesos | Datos | Eventos|
|:---:|:---:|:---:|
|<ul><li> Diagrama de Contexto (DC).</li><li>Tablas de Decicion (TD).</li><li>Casos de Uso (CU).</li></ul>|<ul><li>Diagrama Entidad Relacion (DER).</li><li>Diccionario de Datos (DD).</li></ul> |<ul><li>Lista de Eventos (LE).</li></ul>|

### Pasos a seguir para DC - LE - DFD

1. Identificar el nombre del sistema.
2. Identificar los entes externos.
3. Completar los flujos de datos que relacionen a los entes externos con el sistema
4. Identificar y clasificar los **eventos** del SI.
5. Por cada evento, completar con el **nombre** y **funcion principal**.
6. Completar con entes externos (o temporales) y Flujos de datos.
7. Graficar tantos procesos como funciones principales haya en la LE
8. Graficar todos los entes externos que haya en el DC
9. Completar con los FDs de estimulos y respuestas.
10. Graficar Demoras y conectarlas a los procesos mediante FDs
11. Revisar relevamiento.
12. Revisar consistencia entre todo.


### Diagrama de Contexto

* Alcance e interaccion del SI con el amibiente (con qué entes externos interactua).
* Interfaces con otros sistemas (idem anterior, pero con otros sistemas).
* Eventos ante los cuales el SI debe responder (los flujos de datos entre entes externos).
* Informacion mas importante generada por el SI.


### Lista de Eventos

Ejemplo de una Lista de Eventos

Tipo de Evento | Ente Externo | Nombre del evento | Estimulo | Respuesta | Funcion Principal
:--- |:--- |:--- |:--- |:--- |:--- 
EXT | Cliente | Solicita un Porducto | solicitud_producto | <ul><li>constancia_venta</li><li>aviso_reposicion_stock</li></ul> | Gestionar Venta (1)
TEMP: Semanal | - | Se confecciona un informe con las ventas realizadas | - | ventas_realizadas | Realizar un informe de ventas (2)

* La lista de eventos, debe modelar los sucesos a los que debe dar respuesta el SI.
* El *Tipo de Evento* define quien lo activa
* El *Nombre del Evento*:
  * en caso de ser *externo*, define **¿qué hace el ente externo?**.
  * en caso de ser *temporal*, define **¿qué se hace?**.
* El *Estimulo* es el flujo de datos que provoca la cadena de procesos.
* La *Respuesta* son los flujos que fueron provocados por el estimulo.
* La *Funcion Pricipal* dice que hace el SI para dar respuestas al evento, todos los verbos van en infinitivo.
  * **Las funciones principales luego seran los procesos de un DFD.**

### Diagrama de Flujo de Datos

#### Reglas

* La letraidentificadora no se repite a menos que se trate del mismo.
* No deben emplearse abreviaturas a menos que esten indicadas en el texto.
* Si no se conoce el ente externo del cual proviene la informacion, se coloca un signo de pregunta.
* Los nombres de los flujos deben estar en minuscula y separados por guiones bajos.
* No usar nombres genericos (archivo, dato, factura, remito, etc).


## Diccionario de Datos DD

* Debe ser unico para todos los SI de la empresa.
* Debe reunir todos los datos de los SI de la empresa.
* Es un complemento del DC DFD.
  * Detalla el contenido de los FDs y demoras.
* Se usa poco porque:
  * Es costoso de generar y mantener.
  * Diferencia de criterios a la hora de definir los datos.
  * Resistencia al cambio.
* Tanto los FD como las Demoras implementan una estructura de datos.
* 


## Tablas de Decicion

### Definicion de Procesos

Es la parte del analisis estructurado que se ocupa de establecer que es lo que hace cada proceso del sistema.

Permite ver en detalle los procesos que se desarrollan en el DFD.

### Tabla de Decicion

Es una herramienta que sirve para documentar las decisiones programadas que deben ser tomadas en cada caso de la situacion de estudio

### Funciones

* Permiten expresar en forma clara el texto que describe la situacion, evitando malas interpretaciones del lector
* Permiten al lector ver todos los casos posibles de una situacion de forma sencilla y ordenada.
* Permite ver de manera mas simple errores que pudieran o no haber sido contemplados sobre la situacion.

### Registros

#### Binario o limitado

Se limita a dos valores posibles, por eso binario. Puede darse el caso en el que sea indiferente cualquiera de estos valores, en estos casos se utiliza un tercer valor generalmente representado por una "x" o un "-".

* Si, No, Indiferente

#### Binario Extendido

El registro extendido, utiliza un rango de valores, generalmente se utilizan con porcentajes especificos o con un rango de precios.

### Metodos de Construccion de Tablas

#### Metodo Intuitivo

* Se construyen reglas en base al conocimiento que se tiene del problema.
  * Se utiliza en casos en los que se tiene buen conocimiento del tema.
* Dado que no se evaluan todas las condiciones posibles (metodo masivo), y puede haber ambiguedades, existe una regla adicional llamada "Otros" en donde la accion a realizar seria "Consultar".

####  Metodo Masivo

* Se evaluan toda la combinacion de condiciones posible
* Se utiliza cuando no se tiene mucho conocimiento sobre la combinacion de valores de las condiciones.
* $\text{Cantidad Total de Reglas} = CVC_1 \cdot  CVC_2  \cdot \cdots CVC_n$


### Deputacion de Tablas

#### Combiancion Ilogica

Es cuando hay una combinacion de **valores** de condiciones que resulta en un absurdo, o cuando hay un valor para una codicion que no existe (en el caso de que el registro sea limitado).

#### Reglas repetidas

> Combinacion de valores de condiciones son iguales y la accion que se toma es la misma.

Nada para destacar, se eliminan las reglas repetidas

#### Reglas contradictorias

> Combinacion de valores de condiciones son las mismas, pero la accion difiere.

**Las reglas tienen la misma combinacion de valores de condiciones, pero distintos valores de acciones.**

**Misma combinacion de valores de condiciones, distintas acciones ejecutadas**

#### Redundancia con Valores Limitados.

> Combinacion de valores de condiciones son las mismas salvo la redundante y las acciones a ejecutar son las mismas.

**Mismas acciones ejecutadas, para combinacion de valores de condiciones redundantes.**

* En el caso de que el registro sea limitados, se coloca indiferente.
* En el caso de que el registro sea extendido
  * Si todos los valores son redundantes se llama redundacia total.
  * A menos que se de el caso en el que hay un conjunto de reglas que abarcan todas las combinaciones de condiciones. Solo en ese caso se coloca indiferente.


### Tablas Encadenadas.

* Descomponer el problema en sub problemas mas simples.
* Separar situaciones que no esten totalmente relacionadas entre si.
* Existe una tabla original en donde se comienza a resolver el problema. Dado una combinacion de valores puede derivar la lectura hacia una tabla de menor jerarquia.


#### Jerarquia abierta

Es cuando se deja a decicion del lector la continuacion de la lectura de la tabla. Se parte de la tabla principal, luego se la deriva a otra tabla, y la continuacion queda indefinida.


#### Jerarquia cerrada

Idem anterior, solo que ahora hay una accion adicional que indica que se debe volver a la tabla original.

