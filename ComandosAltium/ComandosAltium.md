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

# Comandos para el Esquematico

