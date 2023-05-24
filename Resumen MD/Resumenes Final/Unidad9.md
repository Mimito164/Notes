> Un Grafo es una terna $\quad G=(V;A;\phi)$
> * $V$ : es el conjunto de vertices $(V\neq \varnothing)$
> * $A$ : es el conjunto de aristas
> * $\phi$ es la funcion de incidencia $\phi : A\to V$
> vertices son los nodos (los circulos) y aristas son als lineas que conectan los nodos (en un digrafo son flechas)

> * Vertices adyacentes: $v_i$ es adyacente a $v_j \Leftrightarrow\exist a_k\in A$ tal que $\phi(a_k)=\{ v_i, v_j \}$. Son aquellos vertices que estan unidos por al menos una arista.
> * Vertices aislados: $v_i$ es aislado $\Leftrightarrow\forall v_k\in V:$ Si $v_i\neq v_k: v_i$ no es adyacente a $v_k$. Son aquellos vertices que no estan unidos por ningun arista.
> * Aristas Incidentes en un Vertice: $a_i$ es Incidente a $v_k\Leftrightarrow v_k\in \phi(a_i)$. Son las aristas que tienen a un determinado vertice en uno de sus extremos.
> * Aristas Adyacentes: $a_i$ es adyacente a $a_k \Leftrightarrow\lvert \phi(a_i)\cap\phi(a_k) \rvert= 1$. Son las aristas que tienen un vertice en comun.
> * Aristas Paralelas: $a_i$ es paralela a $a_k\Leftrightarrow\phi(a_i)=\phi(a_k)$ 
> * Bucles o Lazos: $a_i$ es bucle o lazo $\Leftrightarrow \lvert\phi(a_i) \rvert=1$.
> * Grafo simple: $G$ es simple sii no tiene aristas paralelas ni bucles.


* Camino: sucesion de aristas adyacenteas
* Ciclo o Circuito: camino cerrado (vertice inicial = vertice final).
* Longitud de un camino: cantidad de aristas que lo componen.
* Camino Simple: aquel camino en el que todos los vertice son simples.

* Camino de Euler: camino que pasa por todas las aristas una sola vez.o
* Ciclo de Euler: ciclo que pasa por todas las aristas del grafo.

> **Un grafo tiene camino euleriano sii es conexo y en todos los vertices tienen grado par, o a lo sumo dos grado impar.**

> **Un grafo tiene ciclo euleriano sii es conexo y todos los vertices tienen grado par**


* Camino de Hamilton: camino simple que pasa por todos los vertices una vez.
* Ciclo de Hamilton: ciclo simple que pasa por todos los vertices una  vez.

* Grafo $k\text{-regular}$: $G\text{ es }k\text{-regular}\Leftrightarrow \forall v\in V:g(v)=k,k\in\N_0$. Es cuando todos los vertices tienen el mismo grado.

* Los grafos completos son los grafos cuyos vertices son todos adyacentes entre si.
  * Todos los vertices tienen grado k-1 siendo k la cantidad de vertices.
* Los grafos bipartitos son los grafos en donde se pueden armar subcoonjuntos de vertices en donde ninguno tiene un arista en comun.
* Un grafo bipartito completo es igual que el anterior solo que ahora enrte subconjunto y subconjunto tienen que estar todas las aristas posibles.
* Un subgrafo es el resultado de suprimir uno o mas vertices de un grafo. Al suprimir un vertice se deben suprimir tambien las aristas incidentes.

* Un Grafo Conexos es aquel grafo ne el que entre todo par de vertices existe un camino.

#### Desconexion de grafos

* Itsmo o punto de corte: es aquel vertice que al suprimirlo forma un grafo no conexo.
 $v\in V\text{ es itsmo }\lrArr \sim Gv\text{ es no conexo}$

* Puente: es aquel arista  que al suprimirla forma un grafo no conexo.
	$a\in A\text{ es puente}\lrArr\,  \sim Ga\text{ es no conexo}$
* conjunto desconectante: Es un conjunto de aristas que alsuprimirlas desconectan el grafo.
	$B\sube A\text{ es desconectante }\lrArr\, \sim G_B\text{ es no conexo}$
* Conjunto de Corte: es el conjunto de aristas necesariamente se deben suprimir para formar un grafo no conexo, osea no se suprimen aristas de mas.
	$$ B\sube A\text{ es de corte }\lrArr\, B\text{ es desconectante y ademas } \forall C\sub B, C\text{ no es desconectante}$$
* Conectividad: es el menor numero de vertices cuya supresion desconecta al grafo.


#### Grafos Planos

* un grafo plano es un grafo cuyas aristas no se superponen.

> *Un grafo es plano sii no contiene ningun subgrafoisomorfo al $K_{3,3}$ o al $K_5$*

#### Isomorfismos

> Dados dos grafos: $G_1 = (V_1;A_1;\varphi_1)$ y $G_2 = (V_2;A_2;\varphi_2)$
>
> Se dice que son **isomorfos** sii existen dos funciones biyectivas
>
> $$ f:V_1\to V_2\text{ y } g:A_1\to A_2\text{ tales que: }\forall a\in A_1:\varphi_2(g(a))=f(\varphi_1(a)$$

> Si no hay aristas paralelas, entonces es suficiente
>
> $$ \forall a,v\in V_1:\{u,v\}\in A_1\rArr \{f(u),f(v)\}\in A_2$$
>
> Esto significa que si en el primer grafo hay una arista entre dos vertices, los correspondientes a estos vertices en el segundo grafo tambien deben estar unidos por una arista.

Dos grafos son isomorfos cuando tienen la misma estructura, es decir, sus vertices estan relacionados de igual forma aunque esten dibujados de manera distinta.


#### Condiciones necesarias (no son suficientes):

* Deben tener la misma cantidad de vertices
* Deben tener la misma cantidad de aristas
* Deben tener los mismos grados todos los vertices
* Deben tener caminos de las mismas longitudes
* Si uno tiene ciclos, el otro tambien debe tenerlos.

> *Para que dos grafos sean isomorfos sus matrices de incidencia deben ser isomorfas.*

Basicamente hay que armar las matrices de incidencia, reacomodarlos segun creamos la correspondencia, y ahi ver si las matrices son isomorfas.

#### Digrafos

> Un Digrafo es una terna $\quad G=(V;A;\delta)$
> * $V$ : es el conjunto de vertices $(V\neq \varnothing)$
> * $A$ : es el conjunto de aristas dirigidas o arcos.
> * $\delta$ es la funcion de incidencia $\delta : A\to V\times V\quad$ donde $(v_i;v_j)$ es un par ordenado, $v_i$ estremo inicial y $v_j$ extremo final.

#### Camino Simple y Camino Elemental en Digrafo

> * Camino simple: aquel camino en el que todos los vertices son distintos.
> * Camino elemental: aquel camino en el que todas las aristas son distitas.

#### Funcion grado en un digrafo

> * Grado Positivo: cantidad de arcos o aristas que "entran" al vertice. $g^+(v)$
> * Grado Negativo: cantidad de arcos o aristas que "salen" del vertice. $g^-(v)$
> * Grado Total: suma de los grados positivo y negativo. $g(v)$
> * Grado Neto: diferencia entre el grado positivo y el negativo (el resltado puede ser negativo). $g_N(v)$

* $\sum g^+(v_i)= \lvert A\rvert$
* $\sum g^-(v_i)= \lvert A\rvert$
* $\sum g(v_i)= 2\lvert A\rvert$
* $\sum g_N(v_i)= 0$

> * Pozo: es un vertice $v$ tal que $g^-(v)=0$. No es extremo inicial de ningun arista, "todas las flechas convergen en el".
> * Fuente: es un vertice $v$ tal que $g^+(v)=0$. No es extremo final de ningun arista, "todas las flechas salen de el".

* Matriz de Adyacencia: es la matriz que muestra hacia que vertices hay una flecha.
  * Es una matriz booleana.
  * Es una martiz cuadrada de $n\times n$ siendo $n$ la cantidad de vertices
* Matriz de Incidencia: es la matriz que representa entre que vertices incide una arista.
  * Es una matriz que toma valores de $\{0,1,-1\}$.
    * $1$ cuando sale del vertice
	* $-1$ cuando entra al vertice
	* $0$ cuando no tiene relacion con el vertice
  * Es una matriz de $n\times m$ donde $n$ (las filas) son los vertices y $m$ (las columnas) son las aristas.

#### Grafo asociado a un Digrafo

Se simplifica las direccion de las aristas, de haber aristas paralelas si reemplaza por una sola arista

#### Conexidad en Digrafos

* Digrafo Conexo: es todo aquel cuyo grafo asociado sea conexo.
* Digrafo fuertemente conexo: es todo aquel en el que exista algun camino entre todo par de vertices.
 
> Condicion **necesaria y suficiente** para que exista ciclo de Euler en un digrafo:
> $$\forall v\in V:g^+(v)=g^-(v)$$

> Un arbol es un grafo conexo sin ciclos.

> Condicion necesaria y suficiente: Un arbol es un grafo en el cual entre todo par de vertices existe un unico camino simple

1. Al agregar una arista entre dos vertices de un arbol, deja de ser arbol
2. Todas las aristas de un arbol son puentes.
3. En todo arbol se cumple que $\lvert V\rvert = \lvert A\rvert+1$


> Un bosque es un grafo no conexo en el cual cada una de sus componentes es un arbol.

* En un bosque de k componentes: $\lvert V\rvert=\lvert A\rvert+k$


> Un digrafo simple es un arbol dirigido si su grafo asociado es un arbol.

> **Arbol Dirigido con raiz**: es un arbol en el cual el grado entrante (positivo) de cada vertice es igual a 1, salvo un unico verticve con grado positivo igual a cero llamado raiz.



> * Un vertice $v$ de un arbol se dice que es **hoja** cuando g(v)=1
> * Los **vertices interinos** son todos aquellos que no son la raiz ni las hojas.
> * Se llama **rama** a todo camino que va desde la raiz a alguna hoja.

> * $v$ es **antecesor** de $w \iff$ existe un unico camino simple de $v$ a $w$
> * $w$ es **sucesor** de $v$ en el caso anterior.
> * $v$ es **padre** de $w \iff$ existe una arista de $v$ a $w$
> * $w$ es **hijo** de $v$ en el caso anterior.
> * $v$ y $w$ son **hermanos** si tienen el mismo padre.



> * **Nivel de un vertice**: El nivel de la raiz es cero: $n(r)=0\\$ Cada vertice tiene un nivel mas que su padre: si $p$ es padre de $v\to n(v)=n(p)+1$
> * **Altura de un arbol**: Es el mayor nivel alcanzado por las hojas.
> * **Arbol balanceado**: Si todas las hojas estan en el nivel $h$ o $h-1$ (siendo $h$ la altura del arbol).

#### Arbol $n$-ario

> * Arbol $n$-ario: Un arbol con raiz es $n$-ario $\Leftrightarrow \forall v\in V:g^-(v)\leq n$. Cada vertice puede tener a lo sumo n hijos.
> * Arbol $n$-ario regular: Si todos ls vertices tienen la misma cantidad de hijos , salvo las hojas que no tienen hijos.
> * Arbol $n$-ario regular completo: Si ademas de ser $n$-ario regular, todas las hojas se hayan al mismo nivel.

#### Recorridos de Arboles

> - **Subarbol**: Sea $G=(V;A;\delta)$ un arbol con raiz $r$. Sea $v\in V$, se llama subarbol con raiz $v$, y se indica $T(v)$, al arbol que consta de $v$, todos sus descendientes y las aritas entre ellos.

 

> * Pre-orden: Raiz - subarbol izq - subarbol der; Notacion polaca: Pre-orden
> * In-orden: subarbol izq - Raiz - subarbol der; Notacion usual o infija: In-orden
> * Post-orden: subarbol izq - subarbol der - Raiz Notacion polaca inversa: Post-orden
> 	* se puede recorrer como el pre-orden solo que en sentido opuesto, luego al final invertir la secuencia.


