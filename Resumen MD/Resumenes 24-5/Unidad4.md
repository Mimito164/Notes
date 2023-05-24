Funcion Inyectiva: No hay imagenes repetidas

Funcion Sobreyectiva:  Todos los elementos del conjunto de llegada tienen un elemento del conjunto de partida (el conjunto de llegada esta acotado)

Para que una funcion sea biyectiva los cardinales del conjunto de partida como el de llegada deben ser iguales.

$M_{S\circ R}= M_R \cdot M_S$

Sea una relacion binaria $R:A\to A:$

* $R$ es **Reflexiva** $\Leftrightarrow \forall a\in A: (a,a) \in R$
  * En un diagrama de Venn **tiene** que haber bucles en todos los elementos
  * En forma matricial la diagonal principal **tiene** que estar llena de 1.
  * $I\leq M(R)$
* $R$ es **A-Reflexiva** $\Leftrightarrow \forall a\in A: (a,a) \notin R$
  * En un diagrama de Venn **NO** tiene que haber bucles en todos los elementos.
  * En forma matricial la diagonal principal tiene que estar llena de 0.
  * $I\land M(R) = N$
* $R$ es **Simetrica** $\Leftrightarrow \forall a,b\in A: (a,b)\in R\rArr (b,a)\in R$
  * En un diagrama de Venn si un elemento se relaciona con otro, este tanbien se debe relacionar con el primero.
  * Todos los $1$ que esten de un lado de la diagonal principal, tambien deben estar del otro.
  * $M(R) = M(R)^t$.
* $R$ es **Asimetrica** $\Leftrightarrow \forall a,b\in A: (a,b)\in R\rArr (b,a)\notin R$
  * En un diagrama de Venn si un elemento se relaciona con otro, este **NO SE** debe relacionar con el primero. Osea ni bucles ni caminos de ida y vuelta.
  * Todos los $1$ que esten de un lado de la diagonal principal, **NO** deben estar del otro.
  * $M(R) \land M(R)^t = N$.
* $R$ es **Antisimetrica** $\Leftrightarrow \forall a,b\in A: (a,b)\in R \land (b,a)\in R \rArr a=b$
  * En un diagrama de Venn si un elemento se relaciona con otro, este **NO SE** debe relacionar con el primero. En este caso si hay bucles pero no caminos de ida y vuelta.
  * Todos los $1$ que esten de un lado de la diagonal principal, **NO** deben estar del otro, a exepcion de la diagonal principal.
  * $M(R) \land M(R)^t \leq I$.
* $R$ es **Transitiva** $\Leftrightarrow \forall a,b,c\in A: (a,b)\in R \land (b,c)\in R \rArr (a,c)\in R$
  * En un diagrama de Venn si dos elementos (o mas) estan relacionados, entonces tienen que estar todas las relaciones posibles. 
  * La una forma de verificar esta propiedad es haciendo el producto matricial y verificar que los unos que esten en el resultado esten en la matriz original (lo que dice la propiedad).
  *  $M(R)\cdot M(R)\leq M(R)$.
* A transitiva es lo opuesto a la transitivia

#### Relacion de Conectividad

$\text{Sea } R:A\to A\qquad R^2 = R\circ R$

### Relacion de Equivalencia

$R:A\to A \text{ es de quivalencia si es} \begin{cases}
	\text{Reflexiva} \\
	\text{Simetrica}\\
	\text{Transitiva}
\end{cases}$

A las relaciones de quivalencia se las suele representar por el simbolo ~

#### Clase de Equivalencia

$\text{Sea } (A;\text{\textasciitilde{}}) \text{\quad}   \overline{a} = [a] = Cl(a)=\{ x\in A/ x \text{\textasciitilde{}}a \}
$

#### Conjunto de Clases

$\text{Sea } (A;\text{\textasciitilde{}}) \text{\quad}   A/\text{\textasciitilde{}} = \{ Cl(a)/ a\in A \}
$


#### **Propiedades de las Clases de Equivalencia**

**Aclaracion 1:** Las siguientes propiedades son validas porque se parte de que es una relacion de equivalencia, es decir, ya esta demostrado que la relacion es de equivalencia.

**Aclaracion 2:** Es lo mismo decir $Cl(a)$ que $[a]$


Consideremos $R$ relacion de equivalencia definida en un conjunto $A$

* **Proiedad 1:** $\forall a\in A:[a]\neq \varnothing$
  * Dem: Como se cumple la propiedad reflexiva de $R$ en $A$: $\\
	\forall a\in A: aRa\rArr a\in [a]\rArr [a]\neq \varnothing$
* **Propiedad 2:** $\text{Si }a\in [b]\rArr b\in [a]$
  * Dem: $\text{Si }a\in [b]\rArr aRb \text{ (por def. de clase de Eq.)}\\\rArr bRa \text{ (por la prop. simetrica)}\\\rArr b\in [a]\text{ (por def. de clase de Eq.)}$
* **Propiedad 3:** Las clases de equivalencia son disjuntas "Dos a dos."
  * Basicamente que las clase no se intersectan, y si lo hacen deben ser identicas


#### **Teorema Fundamental de las Relaciones de Equivalencia**

> Toda relacion de equivalencia definida en un conjunto, provoca en el mismo una particion (conjunto cociente)"

> Reciprocamente, toda particion de un conjunto induce en el mismo una relacion de equivalecia.


$\text{Relacion de Equivalencia} \iff \text{Particion del conjunto}$

Basicamente cada relacion de equivalencia me determina una particion del conjunto (recordar definicion de [particion](#particion-de-un-conjunto)). Y si hay una particion dentro del conjunto es porque hay una relacion de equivalencia que lo determina.

#### Demostracion del teorema

> Toda relacion de equivalencia definida en un conjunto, provoca en el mismo una particion (conjunto cociente)"

Propiedades que debe cumplir:
1. $Cl(x) \neq \varnothing$
2. $Cl(x) \cap Cl(y) = \varnothing \quad (\text{si }Cl(x)\neq Cl(y))$
3. $\cup Cl(x) = A$

Dem: $\forall x\in A:x\in Cl(x) \text{ por reflexividad} \rArr x\in\cup Cl(x)$

> Reciprocamente, toda particion de un conjunto induce en el mismo una relacion de equivalecia.

Por hipotesis $P=\{ A_1,A_2,A_3,\ldots,A_n \}$ es una particion de A.

Deinimos en $A: xRy \Leftrightarrow\exist A_i \in P:x\in A_i\land y\in A_j )$

1. Reflexiva: $\forall x\in A: x\in A_i (3^\text{ra}\text{ cond de particion})\\\rArr^{\text{idempot.}}x\in A_i\land x\in A_i\rArr xRx$

2. Simetrica: $\forall x,y\in A: xRy\rArr\exist A_i\in P: x\in A_i\land y\in A_i\\\rArr^{\text{conmutativ.}} \exist A_i\in P: y\in A_i\land x\in A_i\rArr yRx$

3. Transitiva: $\forall x,y,z\in A: xRy\land yRz\\\rArr [\exist A_i\in P:x\in A_i\land y\in A_i]\land[\exist A_k\in P:y\in A_k\land z\in A_k]\\\rArr A_i = A_k (2^\text{da}\text{ prop de particion})\\\rArr\exist A_i\in P: x\in A_i\land z\in A_i\rArr xRz$

#### Aclaraciones:
* En el caso de la propiedad reflexiva, se parte de la hipotesis que un elemento generico que pertenece al conjunto, y luego se llega a la reflexiva
* Alguas propiedades de la igualdad que sirven para demostrar las propiedades de una relacion reflexiva son:
  * Simetria de la igualdad: intercambiar terminos
  * Transitividad de la igualdad: aplicar "transitividad" en igualaciones
* A la hora de armar las clases de equivalencia:
  * En conjuntos finitos basta con dalre un valor a uno de los elementos y despejar el otro, e ir iterando hasta obtener los valores de todas las clases.
  * En relaciones de divisibilidad se realiza el mismo procedimiento que en conjuntos finitos.
  * En relaciones en Reales se toma la expresion y se trata de llegar a formulas que representen las curvas que muestran las clases, en general son dos funciones lineales.
    * A la hora de armar las clases en este caso nos quedaran dos funciones (en general) la cantidad de clases es infinita, por lo que necesariamente van a estar definidas por las funciones.
      * En donde se crucen las funciones lineales se formara una unica clase de ese elemento.	
  	* Como las clases no se tienen que intersectar entre si por el *Teorema Fundamental de las Relaciones de Equivalencia* en este tipo de relaciones tendremos que limitar el conjunto de indices, que sera desde donde se crusan hasta el infinito.
      *  Este conjunto de indices es el que pondremos en el conjunto cociente.
  * En resumen: primero armar las clases, seran dos, una la del elemento donde se intersectan las curvas, el resto son las funciones. Luego se arma el conjunto de indices, que sera desde el elemento donde se intersectan hasta el infinito. Finalmente se arma un conjunto cociente del estilo $\frac{\R}{S}=\{Cl(x)/x\in [m;\infin) \}$
