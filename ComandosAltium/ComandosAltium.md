<h1>La Biblia de Altium</h1>

# Comandos para el Esquematico

## Formato de la hoja de Esquematico

En altium se puede cambiar el formato de la hoja del esquematico. En el menu de la derecha en las pestañas inferiores estara la pestaña de "Properties"

![ConfigSch](./Fotos/ConfigSch.png)

Ahora nos aparecera el menu de la imagen de arriba en donde podremos cambiar el tamaño de la grilla, el de la hoja, etc...

## Comando Place

Para poder agregar cualquier elemento a nuestro esquematico Altium nos ogrece una barra de opciones para colocar la gran mayoria de elementos. 

![PlaceMenu](./Fotos/PlaceMenu.png)

Sin embargo muchas veces resulta mucho mas rapido usar el atajo "place". Al apretar la tecla <kbd>p</kbd> nos abrira una lista de opciones para colocar cualque tipo de elemento sobre nuestro esquematico. Este comando por si solo no hace nada, para poder colocar un elemento se debe presionar otra tecla (dependiendo de lo que querramos hacer).

### Place Part

Comando: <kbd>p</kbd> > <kbd>p</kbd>

Esto nos abrira el menu para coloca componentes.

![PlacePart](./Fotos/PlacePart.png)

### Place Wire

Comando: <kbd>p</kbd> > <kbd>w</kbd>

Este comando se usa para colocar conexiones.

### Place Net Label

Comando: <kbd>p</kbd> > <kbd>n</kbd>

Este comando se usa para colocar Net Labels, son parecidas en funcionamiento a las conexiones de VCC y GND, pero podemos elegir el nombre que querramos. Se usan principalmente para asignarle un nombre a una conexion.

## Comando Align

Comando: <kbd>a</kbd> > <kbd>t</kbd> / <kbd>b</kbd> / <kbd>l</kbd> / <kbd>r</kbd>

Para poder alinear componentes y que nuestro esquematico quede mucho mas elegante, podemos usar el comando "align". Para poder usarlo debemos primero seleccionar los componentes, para ello podemos seleccionarlos con el mouse o usando la tecla <kbd>Shift</kbd> y **luego** usamos el comando

![NotAlign](./Fotos/NotAlign.png)

Despues

![AlignBot](./Fotos/AlignBot.png)


### Distribuir

Comando Horizontal: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>h</kbd>

Comando Vertical: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>v</kbd>

Dentro del comando align esta la posibilidad de separar los compoentes de manera equidistante de manera horizontal o vertical, de cual

![AlignBot](./Fotos/AlignBot.png)

Despues

![DistibuteH](./Fotos/DistributeH.png)

### Align Vertical/Horizontal centers

Comando eje vertical: <kbd>a</kbd> > <kbd>v</kbd>

Comando eje horizontal: <kbd>a</kbd> > <kbd>c</kbd>

Si por algun motivo quisieramos alinear componentes respecto a su centro, con las herramientas vistas anteriormente no podriamos, porque los alinearia a la izquierda, derecha, arriba ..... etc, pero no quedarian centrados.

Para ello estan estos comandos, uno los alinea por el eje vertical y otro por el eje orizontal.

![alignVH](./Fotos/AVC.png)

## Designators

Comando: <kbd>t</kbd> > <kbd>a</kbd> > <kbd>u</kbd>

Para poder cambiar todos los designators de manera rapida y sensilla se puede utilizar este comando. Este comando le asignara un numero a cada designator de los componentes. 

Este comando solo afectara a aquellos designators que tengan un signo de pregunta "?"

## Reset Designators

Comando: <kbd>t</kbd> > <kbd>a</kbd> > <kbd>e</kbd>

Resetea todos los deignators, convierte todos los designators numerados por signos de pregunta "?".

Este comando se usa para resetear todos los designators, esto puede llegar a ser util en la etapa de diseño del esquematico cuando copiemos y peguemos partes de un circuito que ya tenga deisgnators y estos al copiarlos queden repetidos (lo que nos traiga problemas).

## SCH List y cambio de Footprints

Cuando queremos modificar la footprint de varios componentes similares, en vez de modificar uno por uno las propiedades del componente, existe el menu de "SCH List".

![Panels](./Fotos/Panels.png)

![SCHList](./Fotos/SCHList.png)

Al abrirlo nos mostrara esta ventana.

![SCHListWindow](./Fotos/SCHListWindow.png)

Para poder modificar la footprint de algunos componentes primero debemos verificar que en esta ventana arriba a la izquierda diga "selcted objects", esto hara que solo muestre la lista de componentes de aquellos que hayamos seleccionado.

![ListedComponents](./Fotos/listed%20components.png)

Tengan cuidado que altium solo mostrara las propiedades que tengan en comun, si seleccionamos componentes y cables, no podremos visualizar la columna footprints, porque un cable no tiene una footprint

![parts&wires](./Fotos/parts%26wires.png)

Ahora para modificar las footprint de los componentes, simplemente debemos deslizarnos hasta encontrar la columna de footprints.

![currentfootprint](./Fotos/currentFotprint.png)

Y ya podremos modificar cada footprint individualmente.

Tambien podemos aplicar comandos como <kbd>Ctrl</kbd> + <kbd>c</kbd> o <kbd>Ctrl</kbd> + <kbd>v</kbd> cuando queremos usar la misma footprint en varios componentes.

Si por algun motivo no nos deja copiar y pegar valores puede ser que tengamos que ejecutar el siguietne comando: hacer *click derecho* y luego *switch to edit mode*.

![SEM](./Fotos/switchEditMode.png)

## Update to Schematic

Comando: <kbd>d</kbd> > <kbd>u</kbd>

Caundo ya tenemos listo nuestro hermoso esquematico, debemos actualizar los cambios al archivo de Pcb, para ello utilizaremos este comando.

Tambien sirve para actualizar algun cambio que hayamos hecho.

## Cross Select mode.

Comando: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>x</kbd>

Para poder encontrar tanto en el esquematico como en el pcb hay una opcion que lo que hace es que los componentes que seleccionemos en el esquematico, tambien se seleccionen en el pcb, y viceversa. Esta herramienta se llama "Cross Select mode", se puede activar con este comando o desde la pestaña de tools.

![CSM](./Fotos/CrossSelectMode.png)

# Comandos para el Pcb

## Modificacion de Grid

Comando: <kbd>g</kbd>

Como ya sabran altium usa una "grilla" para colocar los componentes, cuando movemos un elemento este buscará alinearse con esta grilla. Pero... ¿qué pasa cuando queremos posicionar un objeto en un lugar que no nos permite la grilla?

Bueno como primera medida se puede usar el comando <kbd>g</kbd> que nos abre un menu de las distintas medidas **estandar** para la grilla. En este caso seria cuestion de elegin una medida mas pequeña.

![grid](./Fotos/grid.png)

Grid Grande:

![BigGrid](./Fotos/gridGrande.gif)

Grid Chica:

![SmallGrid](./Fotos/grid.gif)

## Grid Customizada

Comando: <kbd>Ctrl</kbd> + <kbd>g</kbd>

Puede suceder que el comando de arriba no sea suficiente para nuestras necesidades, sobretodo cuando estamos diseñando una Fooprint que en algunos casos no usa una medida estandar. Para ello existe este comando.

Cuando lo ejecutemos nos abrira esta ventana:

![gridWindow](./Fotos/GridWindow.png)

### Steps

En la seccion de "Steps" nos permite modificar los steps en "x" **pero no** en "y", esto es porque por defecto altium nos ofrece la opcion de hacir grillas cuadradas (misma medida en "x" que en "y"). Pero podemos cambiar esto, para ello tenemos que paretar el boton con la cadenita, y esto va a desvincular la medida en "x" de la de "y", y podremos colocar distintas medidas.

### Display

Cuando creamos un pcb por primera vez Altium no ofrecera una calida bienvenida con una maraña de lineas, que puede llegar a resultar molesto. Pero tambien podemos modificar esto, en la misma ventana de propiedades de la grilla, en la seccion de "Display" tenemos dos tipos de lineas, la linea Fine y la linea Coarse, aqui podremos cambiar el tipo de linea (y el colo tambien). El que yo recomiendo usar es el tipo de linea "Dots", de esta forma la vista del pcb sera mucho mas agradable.

## Rules

Comando: <kbd>d</kbd> > <kbd>r</kbd>

Para poder modificar los parametros estandar y las reglas que guiaran el diseño de nuestro pcb debemos abrir el menu de las reglas.

![RulesMenu](./Fotos/rulesMenu.png)

### Width Routing

Lo primero sera modificar el ancho minimo preferido y maximo de las pistas, para eso nos vamos a la siguiente direccion: "Routing > Width > Width".

![routingWidth](./Fotos/routingWidth.png)

Ahi simplemento modificaremos las medidas que querramos.

### Clearance

Para modificar la separacion entre componentes nos iremos a "Electrical > Clearance > Clearance". 

Esta Clearance aplica a todo tipo de elementos, ya sea pistas, componentes poligonos, etc.. 

#### Separacion del poligono:

Si nosotros deseamos solamente modificar la separacion del poligono respecto a las pistas debemos crear una nueva regla. Para esto hacemos click derecho en la relga clearance y luego en "duplicate rule".

![duplicateRule](./Fotos/duplicateRule.png)

La regla debera tener las siguientes caracteristicas:

1. En nombre de la Rule deberia ser representativo (en general uso pol "Polygon")
2. En la seccion de "Where the first object matches" elegimos la opcion "Custom Query"
    1. Esto nos abrira una sailla de texto en la que debemos escribir **textualmente** "InPolygon".
3. En la seccion de "Constrains" 
    1. Escribimos la medida de la separacion del poligono.
    2. Tildamos la casilla "Ignore pad to pad clearances within a footprint"
4. Por ultimo debemos modificar la prioridad de esta nueva regla.
    1. Para ello apretamos el boton de abajo a la izquierda que dice "Priorities".
    2. Seleccionamos nuestra relga del poligono y apretamos el boton de increase priority.

Asi debera verse nuestra nueva regla:

![polygonClearance](./Fotos/poligonClearance.png)

Asi deberan verse las pioridades de las reglas:

![clearancePriorities](./Fotos/clearancePriorities.png)

## Place

Al igual que en el esquematico en el pcb tenemos una barra para colocar distintos elementos de un pcb

![pcbBar](./Fotos/barrapcb.png)

Tambien denemos el comando place, para ello presonamos <kbd>p</kbd> y luego la letra que corresponda con el elemento que querramos colocar.

Por ejemplo para colocar una pista presionamos <kbd>p</kbd> > <kbd>t</kbd> (de "track", pista en ingles).

## Cambio de capa

Si quisieramos cambiar de capa podemos hacerlo apretando <kbd>Ctrl</kbd> + <kbd>Shift</kbd> y movemos la rueda del mouse.

Algo interesante de este comando es que si estamos colocando una pista y en el momento cambiamos de pista, automaticamente nos coloca una via>

![layerChange](./Fotos/layerChange.gif)


## Tipos de pista

Comando: <kbd>Shift</kbd> + <kbd>espacio</kbd>

Cuando colocamos una pista podemos elegir para que haga giros de 45º 90º, "curvas" de 45º y 90º, o simplemente en cualquier direccion.

Para esto **mientras** estamos colocando una pista, presionamos <kbd>Shift</kbd> + <kbd>espacio</kbd>

![trackStyle](./Fotos/trackStyle.gif)

## Cambio de ancho de pista

Comando: <kbd>3</kbd>

Para cambiar el ancho de pista podemos presionar la tecla <kbd>3</kbd> **mientras** estamos colocando una pista.


## Align (pero en PCB)

Comando: <kbd>a</kbd> > <kbd>t</kbd> / <kbd>b</kbd> / <kbd>l</kbd> / <kbd>r</kbd>

En el esquematico habiamos visto que exite la posibilidad de alinear componentes, bueno... en el pcb tambien.

### Distribuir

Comando Horizontal: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>h</kbd>

Comando Vertical: <kbd>Ctrl</kbd> + <kbd>Shift</kbd> + <kbd>v</kbd>

En el esquematico habiamos visto que exite la posibilidad de distribuir equitativamente los componentes, bueno... en el pcb tambien.

Este comando no funciona bien cunado los componetes tienen distinto tamaño.

### Align Vertical/Horizontal centers

Comando eje vertical: <kbd>a</kbd> > <kbd>v</kbd>

Comando eje horizontal: <kbd>a</kbd> > <kbd>c</kbd>

En el esquematico habiamos visto que podemos alinear componentes respecto a su centro, bueno... en el pcb tambien. Peeeero, ahora el cursor tendra una cruz debemos seleccioan respecto *a que compoente* queremos alinear el resto de seleccionados.

![AVCPCB](./Fotos/alignVCPCB.gif)

## Resaltar Capas

Comando: <kbd>Shift</kbd> + <kbd>s<kbd>

Para poder obtener una mejor visualizacion de la capa en la que estamos trabajando podemos usar este comando. Esto hara que el resto de capas excepto en la que estamos trabajando, quedaran de color gris. Si volvemos a usar este comando directamente desaparecen.

## Resaltar pistas o conecciones

Comando: <kbd>Ctrl</kbd> + Click Izquierdo

Para resaltar una pista o coneccion hacemos "<kbd>Ctrl</kbd> + Click Izquierdo" sobre la pista o isla que querramos resaltar.

Para dejar de resaltar conecciones, simplemente presionan "<kbd>Ctrl</kbd> + Click Izquierdo" sobre un espacio negro.

### Aumentar o disminuir el contraste

Para una mejor visualizacion de las pistas resaltadas podemos aumentar o disminuir el contraste podemos presionar <kbd>[</kbd> o <kbd>]</kbd>

Esto solo funciona solamente presionando **directamente** la tecla del corchete, es decir, no funcionará si tenemos que presionar <kbd>AltGr</kbd> u otra combinacion de teclas para acceder al corchete. 

La solucion para este problema es descargando el idioma para el teclado americano (porque tiene una tecla dedicada a los corchetes). Para cambiar de idiomas en windos se presiona <kbd>Windows</kbd> + <kbd>espacio</kbd>.

![bright](./Fotos/brightness.gif)

## Keepout

Comando: <kbd>p</kbd> > <kbd>k</kbd> > <kbd>t</kbd>

Una manera para definir los limites de una es usando un "keepout". Hay muchos elementos que altium nos permite usar para colocar un keepout. El que nosotros utilizaremos en esta ocasion, sera el de una pista. La forma de colocacion sera exactamente igual que la de una pista solo que en vez de ser una pista sera un keepout.

Los elementos keepout, como dice su nombre, no permiten que hayan elementos cerca.

## Re-definir el espacio de trabajo.

Comando: <kbd>d</kbd> > <kbd>s</kbd> > <kbd>d</kbd>

Hay muchas maneras de redefinir el espacio de trabajo (el cuadrado negro). Una es presionando <kbd>1</kbd> esto cambiara el espacio de trabajo y solo se limitara a mostrar herramientas de trabajo relacionadas con la forma de la placa, no vamos a detallar cual/cuales herramientas son utiles, pero los invitamos a investigarlas.

La forma mas rapida y que les recomendamos es la siguiente:

1. Primero definimos un keepout del borde de la placa.
2. Luego seleccionamos los segmentos. Una forma rapida de hacer este es seleccionando un solo segmento y luego presionan <kbd>Tab</kbd>, esto seleccionara todos los segmentos que esten en contacto al que hayamos seleccionado inicialmente.
3. Finalmente usamos el comando <kbd>d</kbd> > <kbd>s</kbd> > <kbd>d</kbd>.


