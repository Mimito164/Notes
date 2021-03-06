<h1>La Biblia de Altium 馃Ь</h1>

- [Comandos para el Esquem谩tico](#comandos-para-el-esquem谩tico)
  - [Formato de la hoja de Esquem谩tico](#formato-de-la-hoja-de-esquem谩tico)
  - [Comando Place](#comando-place)
    - [Place Part](#place-part)
    - [Place Wire](#place-wire)
    - [Place Net Label](#place-net-label)
  - [Comando Align](#comando-align)
    - [Distribuir](#distribuir)
    - [Align Vertical/Horizontal centers](#align-verticalhorizontal-centers)
  - [Designators](#designators)
  - [Reset Designators](#reset-designators)
  - [SCH List y cambio de Footprints](#sch-list-y-cambio-de-footprints)
  - [Update to Schematic](#update-to-schematic)
  - [Cross Select mode.](#cross-select-mode)
- [Comandos para el Pcb](#comandos-para-el-pcb)
  - [Modificaci贸n de Grid](#modificaci贸n-de-grid)
  - [Grid Customizada](#grid-customizada)
    - [Steps](#steps)
    - [Display](#display)
  - [Rules](#rules)
    - [Width Routing](#width-routing)
    - [Clearance](#clearance)
      - [Separaci贸n del pol铆gono:](#separaci贸n-del-pol铆gono)
  - [Place](#place)
  - [Cambio de capa](#cambio-de-capa)
  - [Tipos de pista](#tipos-de-pista)
  - [Cambio de ancho de pista](#cambio-de-ancho-de-pista)
  - [Align (pero en PCB)](#align-pero-en-pcb)
    - [Distribuir](#distribuir-1)
    - [Align Vertical/Horizontal centers](#align-verticalhorizontal-centers-1)
  - [Resaltar Capas](#resaltar-capas)
  - [Resaltar pistas o conexiones](#resaltar-pistas-o-conexiones)
    - [Aumentar o disminuir el contraste](#aumentar-o-disminuir-el-contraste)
  - [Keepout](#keepout)
  - [Re-definir el espacio de trabajo.](#re-definir-el-espacio-de-trabajo)
  - [Modificaci贸n de footprint](#modificaci贸n-de-footprint)
  - [Repour polygon](#repour-polygon)
- [Archivos de Impresi贸n](#archivos-de-impresi贸n)
  - [PDF de Impresi贸n](#pdf-de-impresi贸n)


# Comandos para el Esquem谩tico

## Formato de la hoja de Esquem谩tico

En altium se puede cambiar el formato de la hoja del esquem谩tico. En el men煤 de la derecha en las pesta帽as inferiores estar谩 la pesta帽a de "Properties"

![ConfigSch](./Fotos/ConfigSch.png)

Ahora nos aparecer谩 el men煤 de la imagen de arriba en donde podremos cambiar el tama帽o de la grilla, el de la hoja, etc...

## Comando Place

Para poder agregar cualquier elemento a nuestro esquem谩tico Altium nos ofrece una barra de opciones para colocar la gran mayor铆a de elementos. 

![PlaceMenu](./Fotos/PlaceMenu.png)

Sin embargo muchas veces resulta mucho m谩s r谩pido usar el atajo "place". Al apretar la tecla <kbd>p</kbd> nos abrir谩 una lista de opciones para colocar cualquier tipo de elemento sobre nuestro esquem谩tico. Este comando por s铆 solo no hace nada, para poder colocar un elemento se debe presionar otra tecla (dependiendo de lo que queramos hacer).

### Place Part

Comando: <kbd>p</kbd> > <kbd>p</kbd>

Esto nos abrir谩 el men煤 para colocar componentes.

![PlacePart](./Fotos/PlacePart.png)

### Place Wire

Comando: <kbd>p</kbd> > <kbd>w</kbd>

Este comando se usa para colocar conexiones.

### Place Net Label

Comando: <kbd>p</kbd> > <kbd>n</kbd>

Este comando se usa para colocar Net Labels, son parecidas en funcionamiento a las conexiones de VCC y GND, pero podemos elegir el nombre que queramos. Se usan principalmente para asignarle un nombre a una conexi贸n.

## Comando Align

Comando: <kbd>a</kbd> > <kbd>t</kbd> / <kbd>b</kbd> / <kbd>l</kbd> / <kbd>r</kbd>

Para poder alinear componentes y que nuestro esquem谩tico quede mucho m谩s elegante, podemos usar el comando "align". Para poder usarlo debemos primero seleccionar los componentes, para ello podemos seleccionarlos con el mouse o usando la tecla <kbd>Shift</kbd> y **luego** usamos el comando

![NotAlign](./Fotos/NotAlign.png)

Despu茅s

![AlignBot](./Fotos/AlignBot.png)


### Distribuir

Comando Horizontal: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>h</kbd>

Comando Vertical: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>v</kbd>

Dentro del comando align est谩 la posibilidad de separar los componentes de manera equidistante de manera horizontal o vertical.

![AlignBot](./Fotos/AlignBot.png)

Despu茅s

![DistibuteH](./Fotos/DistributeH.png)

### Align Vertical/Horizontal centers

Comando eje vertical: <kbd>a</kbd> > <kbd>v</kbd>

Comando eje horizontal: <kbd>a</kbd> > <kbd>c</kbd>

Si por alg煤n motivo quisi茅ramos alinear componentes respecto a su centro, con las herramientas vistas anteriormente no podr铆amos, porque los alinear谩 a la izquierda, derecha, arriba ..... etc, pero no quedar谩n centrados.

Para ello est谩n estos comandos, uno los alinea por el eje vertical y otro por el eje horizontal.

![alignVH](./Fotos/AVC.png)

## Designators

Comando: <kbd>t</kbd> > <kbd>a</kbd> > <kbd>u</kbd>

Para poder cambiar todos los designators de manera r谩pida y sencilla se puede utilizar este comando. Este comando le asignar谩 un n煤mero a cada designator de los componentes. 

Este comando s贸lo afectar谩 a aquellos designators que tengan un signo de pregunta "?"

## Reset Designators

Comando: <kbd>t</kbd> > <kbd>a</kbd> > <kbd>e</kbd>

Resetea todos los designators, convierte todos los designadores numerados por signos de pregunta "?".

Este comando se usa para resetear todos los designators, esto puede llegar a ser 煤til en la etapa de dise帽o del esquem谩tico cuando copiemos y peguemos partes de un circuito que ya tenga deisgnators y estos al copiarlos queden repetidos (lo que nos traiga problemas).

## SCH List y cambio de Footprints

Cuando queremos modificar la footprint de varios componentes similares, en vez de modificar uno por uno las propiedades del componente, existe el men煤 de "SCH List".

![Panels](./Fotos/Panels.png)

![SCHList](./Fotos/SCHList.png)

Al abrirlo nos mostrar谩 esta ventana.

![SCHListWindow](./Fotos/SCHListWindow.png)

Para poder modificar la footprint de algunos componentes primero debemos verificar que en esta ventana arriba a la izquierda diga "selcted objects", esto hara que solo muestre la lista de componentes de aquellos que hayamos seleccionado.

![ListedComponents](./Fotos/listed%20components.png)

Tengan cuidado que altium solo mostrar谩 las propiedades que tengan en com煤n, si seleccionamos componentes y cables, no podremos visualizar la columna footprints, porque un cable no tiene una footprint

![parts&wires](./Fotos/parts%26wires.png)

Ahora para modificar las footprint de los componentes, simplemente debemos deslizarnos hasta encontrar la columna de footprints.

![currentfootprint](./Fotos/currentFotprint.png)

Y ya podremos modificar cada footprint individualmente.

Tambi茅n podemos aplicar comandos como <kbd>Ctrl</kbd> + <kbd>c</kbd> o <kbd>Ctrl</kbd> + <kbd>v</kbd> cuando queremos usar la misma footprint en varios componentes.

Si por alg煤n motivo no nos deja copiar y pegar valores puede ser que tengamos que ejecutar el siguiente comando: hacer *click derecho* y luego *switch to edit mode*.

![SEM](./Fotos/switchEditMode.png)

## Update to Schematic

Comando: <kbd>d</kbd> > <kbd>u</kbd>

Cuando ya tenemos listo nuestro hermoso esquem谩tico, debemos actualizar los cambios al archivo de Pcb, para ello utilizaremos este comando.

Tambi茅n sirve para actualizar alg煤n cambio que hayamos hecho.

## Cross Select mode.

Comando: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>x</kbd>

Para poder encontrar tanto en el esquem谩tico como en el pcb hay una opci贸n que lo que hace es que los componentes que seleccionemos en el esquem谩tico, tambi茅n se seleccionen en el pcb, y viceversa. Esta herramienta se llama "Cross Select mode", se puede activar con este comando o desde la pesta帽a de tools.

![CSM](./Fotos/CrossSelectMode.png)

# Comandos para el Pcb

## Modificaci贸n de Grid

Comando: <kbd>g</kbd>

Como ya sabr谩n altium usa una "grilla" para colocar los componentes, cuando movemos un elemento este buscar谩 alinearse con esta grilla. Pero... 驴Qu茅 pasa cuando queremos posicionar un objeto en un lugar que no nos permite la grilla?

Bueno como primera medida se puede usar el comando <kbd>g</kbd> que nos abre un men煤 de las distintas medidas **est谩ndar** para la grilla. En este caso ser铆a cuesti贸n de elegir una medida m谩s peque帽a.

![grid](./Fotos/grid.png)

Grid Grande:

![BigGrid](./Fotos/gridGrande.gif)

Grid Chica:

![SmallGrid](./Fotos/grid.gif)

## Grid Customizada

Comando: <kbd>Ctrl</kbd> + <kbd>g</kbd>

Puede suceder que el comando de arriba no sea suficiente para nuestras necesidades, sobre todo cuando estamos dise帽ando una Footprint que en algunos casos no usa una medida est谩ndar. Para ello existe este comando.

Cuando lo ejecutemos nos abrira esta ventana:

![gridWindow](./Fotos/GridWindow.png)

### Steps

En la secci贸n de "Steps" nos permite modificar los steps en "x" **pero no** en "y", esto es porque por defecto altium nos ofrece la opci贸n de hacer grillas cuadradas (misma medida en "x" que en "y"). Pero podemos cambiar esto, para ello tenemos que apretar el bot贸n con la cadenita, y esto va a desvincular la medida en "x" de la de "y", y podremos colocar distintas medidas.

### Display

Cuando creamos un pcb por primera vez Altium no ofrece una c谩lida bienvenida con una mara帽a de l铆neas, que puede llegar a resultar molesto. Pero tambi茅n podemos modificar esto, en la misma ventana de propiedades de la grilla, en la secci贸n de "Display" tenemos dos tipos de l铆neas, la l铆nea Fine y la l铆nea Coarse, aqu铆 podremos cambiar el tipo de l铆nea (y el color tambi茅n). El que yo recomiendo usar es el tipo de l铆nea "Dots", de esta forma la vista del pcb ser谩 mucho m谩s agradable.

## Rules

Comando: <kbd>d</kbd> > <kbd>r</kbd>

Para poder modificar los par谩metros est谩ndar y las reglas que guiar谩n el dise帽o de nuestro pcb debemos abrir el men煤 de las reglas.

![RulesMenu](./Fotos/rulesMenu.png)

### Width Routing

Lo primero ser谩 modificar el ancho m铆nimo preferido y m谩ximo de las pistas, para eso nos vamos a la siguiente direcci贸n: "Routing > Width > Width".

![routingWidth](./Fotos/routingWidth.png)

Ah铆 simplemente modificaremos las medidas que queramos.

### Clearance

Para modificar la separaci贸n entre componentes nos iremos a "Electrical > Clearance > Clearance". 

Esta Clearance aplica a todo tipo de elementos, ya sea pistas, componentes pol铆gonos, etc.. 

#### Separaci贸n del pol铆gono:

Si nosotros deseamos solamente modificar la separaci贸n del pol铆gono respecto a las pistas debemos crear una nueva regla. Para esto hacemos click derecho en la regla clearance y luego en "duplicate rule".

![duplicateRule](./Fotos/duplicateRule.png)

La regla deber谩 tener las siguientes caracter铆sticas:

1. En nombre de la Rule deber铆a ser representativo (en general uso pol "Polygon")
2. En la secci贸n de "Where the first object matches" elegimos la opci贸n "Custom Query"
    1. Esto nos abrir谩 una casilla de texto en la que debemos escribir **textualmente** "InPolygon".
3. En la secci贸n de "Constrains" 
    1. Escribimos la medida de la separaci贸n del pol铆gono.
    2. Tildamos la casilla "Ignore pad to pad clearances within a footprint"
4. Por 煤ltimo debemos modificar la prioridad de esta nueva regla.
    1. Para ello apretamos el bot贸n de abajo a la izquierda que dice "Priorities".
    2. Seleccionamos nuestra regla del pol铆gono y apretamos el bot贸n de increase priority.

As铆 deber谩 verse nuestra nueva regla:

![polygonClearance](./Fotos/poligonClearance.png)

As铆 deben verse las prioridades de las reglas:

![clearancePriorities](./Fotos/clearancePriorities.png)

## Place

Al igual que en el esquem谩tico en el pcb tenemos una barra para colocar distintos elementos de un pcb

![pcbBar](./Fotos/barrapcb.png)

Tambi茅n tenemos el comando place, para ello presionamos <kbd>p</kbd> y luego la letra que corresponda con el elemento que queramos colocar.

Por ejemplo, para colocar una pista presionamos <kbd>p</kbd> > <kbd>t</kbd> (de "track", pista en ingl茅s).

## Cambio de capa

Si quisi茅ramos cambiar de capa podemos hacerlo apretando <kbd>Ctrl</kbd> + <kbd>Shift</kbd> y movemos la rueda del mouse.

Algo interesante de este comando es que, si estamos colocando una pista y en el momento cambiamos de pista, autom谩ticamente nos coloca una v铆a:

![layerChange](./Fotos/layerChange.gif)


## Tipos de pista

Comando: <kbd>Shift</kbd> + <kbd>espacio</kbd>

Cuando colocamos una pista podemos elegir para que haga giros de 45潞 90潞, "curvas" de 45潞 y 90潞, o simplemente en cualquier direcci贸n.

Para esto **mientras** estamos colocando una pista, presionamos <kbd>Shift</kbd> + <kbd>espacio</kbd>

![trackStyle](./Fotos/trackStyle.gif)

## Cambio de ancho de pista

Comando: <kbd>3</kbd>

Para cambiar el ancho de pista podemos presionar la tecla <kbd>3</kbd> **mientras** estamos colocando una pista.


## Align (pero en PCB)

Comando: <kbd>a</kbd> > <kbd>t</kbd> / <kbd>b</kbd> / <kbd>l</kbd> / <kbd>r</kbd>

En el esquem谩tico hab铆amos visto que existe la posibilidad de alinear componentes, bueno... en el pcb tambi茅n.

### Distribuir

Comando Horizontal: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>h</kbd>

Comando Vertical: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>v</kbd>

En el esquem谩tico hab铆amos visto que existe la posibilidad de distribuir equitativamente los componentes, bueno... en el pcb tambi茅n.

Este comando no funciona bien cuando los componentes tienen distinto tama帽o.

### Align Vertical/Horizontal centers

Comando eje vertical: <kbd>a</kbd> > <kbd>v</kbd>

Comando eje horizontal: <kbd>a</kbd> > <kbd>c</kbd>

En el esquem谩tico hab铆amos visto que podemos alinear componentes respecto a su centro, bueno... en el pcb tambi茅n. Peeeero, ahora el cursor tendr谩 una cruz debemos seleccionan respecto *a qu茅 componente* queremos alinear el resto de seleccionados.

![AVCPCB](./Fotos/alignVCPCB.gif)

## Resaltar Capas

Comando: <kbd>Shift</kbd> + <kbd>s</kbd>

Para poder obtener una mejor visualizaci贸n de la capa en la que estamos trabajando podemos usar este comando. Esto har谩 que el resto de capas excepto en la que estamos trabajando, quedaran de color gris. Si volvemos a usar este comando directamente desaparecen.

## Resaltar pistas o conexiones

Comando: <kbd>Ctrl</kbd> + Click Izquierdo

Para resaltar una pista o conexi贸n hacemos "<kbd>Ctrl</kbd> + Click Izquierdo" sobre la pista o isla que queramos resaltar.

Para dejar de resaltar conexiones, simplemente presionan "<kbd>Ctrl</kbd> + Click Izquierdo" sobre un espacio negro.

### Aumentar o disminuir el contraste

Para una mejor visualizaci贸n de las pistas resaltadas podemos aumentar o disminuir el contraste podemos presionar <kbd>[</kbd> o <kbd>]</kbd>

Esto solo funciona solamente presionando **directamente** la tecla del corchete, es decir, no funcionar谩 si tenemos que presionar <kbd>AltGr</kbd> u otra combinaci贸n de teclas para acceder al corchete. 

La soluci贸n para este problema es descargando el idioma para el teclado americano (porque tiene una tecla dedicada a los corchetes). Para cambiar de idiomas en windows se presiona <kbd>Windows</kbd> + <kbd>espacio</kbd>.

![bright](./Fotos/brightness.gif)

## Keepout

Comando: <kbd>p</kbd> > <kbd>k</kbd> > <kbd>t</kbd>

Una manera para definir los l铆mites de una es usando un "keepout". Hay muchos elementos que altium nos permite usar para colocar un keepout. El que nosotros utilizaremos en esta ocasi贸n, ser谩 el de una pista. La forma de colocaci贸n ser谩 exactamente igual que la de una pista solo que en vez de ser una pista ser谩 un keepout.

Los elementos keepout, como dice su nombre, no permiten que haya elementos cerca.

## Re-definir el espacio de trabajo.

Comando: <kbd>d</kbd> > <kbd>s</kbd> > <kbd>d</kbd>

Hay muchas maneras de redefinir el espacio de trabajo (el cuadrado negro). Una es presionando <kbd>1</kbd> esto cambiar谩 el espacio de trabajo y solo se limitar谩 a mostrar herramientas de trabajo relacionadas con la forma de la placa, no vamos a detallar cu谩l/cu谩les herramientas son 煤tiles, pero los invitamos a investigarlas.

La forma m谩s r谩pida y que les recomendamos es la siguiente:

1. Primero definimos un keepout del borde de la placa.
2. Luego seleccionamos los segmentos. Una forma r谩pida de hacer este es seleccionando un solo segmento y luego presionan <kbd>Tab</kbd>, esto seleccionara todos los segmentos que est茅n en contacto al que hayamos seleccionado inicialmente.
3. Finalmente usamos el comando <kbd>d</kbd> > <kbd>s</kbd> > <kbd>d</kbd>.

## Modificaci贸n de footprint

Si bien este comando est谩 ubicado en la categor铆a de "Pcb" corresponde a la categor铆a de pcb y esquem谩tico.

En este caso se va a detallar como cambiar al footrpint a un componente en particular del esquem谩tico.

1. Seleccionar el componente e ir a las propiedades del mismo.
2. En la secci贸n "Parapeters" seleccionamos el par谩metro "footprint" y hacemos click en el bot贸n del l谩piz para editar o en el boton "Add" para agregar una nueva footprint (a fines pr谩cticos es indistinto).

    ![Footprint](./Fotos/Footprint.png)

3. Luego les abrir谩 una ventana en la que deben buscar su footprint.


## Repour polygon

Comando: "Seleccionar pol铆gono" > "Click derecho" > <kbd>y</kbd> > <kbd>a</kbd>

Si hacemos algunos cambios sobre nuestro dise帽o, el pol铆gono no se actualiza, para ello ejecutamos este comando y autom谩ticamente se actualizar谩.

# Archivos de Impresi贸n

Estos son los pasos a seguir para generar un archivo de impresi贸n.

Preparativos previos:

1. Ajustar el espacio de trabajo (el "cuadrado negro") al borde de la placa. Mirar [este](#re-definir-el-espacio-de-trabajo) comando. <figure><img src="./Fotos/pcbexample.png" style="width:70%;display:block;margin:auto"><figcaption style="text-align: center;">La placa se deber铆a ver algo as铆</figcaption></figure>
2. A帽adir un nuevo archivo .PcbDoc provisorio al proyecto. <img src="./Fotos/pcbprint.png" style="display:block;margin:auto">
3. Colocar un "Array de Pcbs" para ello usar el comando <kbd>p</kbd> > "Embedded Board Array/Panelize"<img src="./Fotos/panelize.png" style="display:block;margin:auto">
4. Presionar la tecla <kbd>Tab</kbd> para entrar a las configuraciones, en la seccion "Pcb Document" agregar el archivo pcb de nuestro proyecto.<img src="./Fotos/panelizePcbdoc.png" style="display:block;margin:auto">
5. Elegir la cantidad de filas y columnas.
6. Definir la separaci贸n entre placa y placa en los par谩metros "Row Margin" y "Column Margin" (recomiendo 5mm)
7. Finalmente colocarlo cerca de la esquina inferior del espacio de trabajo.

<img src="./Fotos/PanelizePlaced.png" style="display:block;margin:auto">

## PDF de Impresi贸n

1. Ahora hacer Click derecho sobre el archivo nuevo y hacer click en "print preview".
<img src="./Fotos/printpreview.png" style="display:block;margin:auto;width:60%">
2. Click derecho sobre la hoja y hacer click en "page setup". Las opciones se deber铆an ver id茅nticas.<img src="./Fotos/pagesetup.png" style="display:block;margin:auto;width:100%">
3. Cerramos la ventana, luego click derecho sobre la hoja y hacer click en "configuration". **Para bottom layer** las opciones se deber铆an ver id茅nticas a la imagen (si no aparece la capa bottom layer, entonces debemos hacer click derecho y luego "Insert Layer" y agregar la bottom layer).<img src="./Fotos/configbottom.png" style="display:block;margin:auto;width:180%">
4. Hacemos click en "ok" y luego presionamos el bot贸n de print, seleccionado la impresora que este conectada o "Microsoft Print to PDF" si deseamos generar un archivo PDF.
5. Si la placa es doble faz debemos repetir el paso 3 y 4 solo que ahora agregando la capa de Top Layer. Las opciones se deber铆an ver id茅nticas a la imagen.<img src="./Fotos/configtop.png" style="display:block;margin:auto;width:180%">

**N贸tese que la casilla de "Mirror" esta tildada**
