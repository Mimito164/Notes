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

![NotAlign](./Fotos/NotAlign.png)

Despues

![DistibuteH](./Fotos/DistributeH.png)

## Designators

Comando: <kbd>t</kbd> > <kbd>a</kbd> > <kbd>u</kbd>

Para poder cambiar todos los designators de manera rapida y sensilla se puede utilizar este comando. Este comando le asignara un numero a cada designator de los componentes. 

Este comando solo afectara a aquellos designators que tengan un signo de pregunta "?"