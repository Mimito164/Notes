**$R$ es de orden si es Reflexiva Antisimetrica y Transitiva**

Cualquier subconjunto de los naturales relacionado por la division, esta ordenado.

Cualquier conjunto de divisores de un numero $n$ relacionado por la division, esta ordenado.

#### Conjunto Totalmente Ordenado (TTO)

$\text{A esta TTO}\iff\forall x,y\in A: (x\preceq y \lor y\preceq x)$

* El Diagrama de Hasse de un conjunto tto es una cadena

#### Orden Reciproco

$\text{Sea }(A;\preceq)\quad\text{Sea } R:A\to A/ xRy\Leftrightarrow y\preceq x$

#### Orden usual del Producto

$\text{Sean }(A;\preceq_1)\text{ y }(B;\preceq_2) \qquad (x;y)R(z;t)\Leftrightarrow x\preceq_1z \land y\preceq_2 t$

#### **Elementos Notables de un Conjunto Ordenado**

$m\in A \text{ es }\textbf{maximal}\text{ de } A \Leftrightarrow\forall x\in A: m\preceq x\rArr x = m$

* Si el maximal es unico, se lo llama **maximo o ultimo elemento**.
* Es el que precede a todos los elementos de A.

$m\in A \text{ es }\textbf{minimal}\text{ de } A \Leftrightarrow\forall x\in A: x\preceq m\rArr x = m$

* Si el minimal es unico, se lo llama **minimo o primer elemento**.
* Es el elemento que ningun otro lo precede.

$\text{Sea }(A;\preceq)\text{ un conjunto ordenado con primer elemento } p\qquad m \in A \text{ es }\textbf{atomo}\text{ de } A \Leftrightarrow\forall x\in A: (x\preceq m \rArr x=m \lor x=p)$

* Son los que estan inmediatamente despues del primer elemento.
  * Hay primer elemento cuando el diagrama de hasse converge en un solo elemento.

#### Conjunto Bien Ordenado

$A \text{ esta Bien Ordenado } \Leftrightarrow \text{todo subconjunto de } A \text{ tiene } 1^{er}\text{ elemento}$

Entonces se deduce que en un conjunto de buen orden **no** puede haber elementos incomparables.

$\text{Buen Orden} \rArr  \text{Orden Total}$


#### **Cotas Superiores e Inferiores**

$\text{Sea } (A;\preceq)\text{ un conjunto ordenado y } \varnothing \neq B\sube A\qquad s\in A \text{ es } \textbf{cota superior} \text{ de } B \Leftrightarrow\forall x\in B:x\preceq s$ 

$\text{Sea } (A;\preceq)\text{ un conjunto ordenado y } \varnothing \neq B\sube A\qquad i\in A \text{ es } \textbf{cota inferior} \text{ de } B \Leftrightarrow\forall x\in B:i\preceq x$

* El conjunto de cotas superiores se llama **Conjunto Mayorante**.
* El conjunto de cotas inferiores se llama **Conjunto Minorante**.

* La menor de las cotas superiores, recibe el nombre de **supremo**.
* La mayor de las cotas inferiores, recibe el nombre de **infimo**.
* Si el supremo pertenece a B, se llama **Maximo** de B.
* Si el infimo pertenece a B, se llama **Minimo** de B.

 
#### **Redes**

$\text{Es }\textbf{Superior Semirreticulo} \iff \forall a,b \in A: \exist \text{ supremo}(a,b)$


$\text{Es }\textbf{Inferior Semirreticulo} \iff \forall a,b \in A: \exist \text{ infimo}(a,b)$

$(A;\preceq) \text{ es} \textbf{ Red} \iff \text{es superior e iferior semirreticulo}$

Entre todo par de elementos debe existir **supremo** e **infimo**.


Lo mas eficiente seria verificar si hay supremo e infimo entre los elementos incomparables.

$\text{Si } a\preceq b \rArr \text{sup}(a,b) = b \quad y \quad \text{inf}(a,b) =a$

Si un conjunto ordenado tiene mas de un maximal o mas de un minimal, no puede ser red.

Si un conjunto ordenado tiene solo un maximal y un solo minimal no necesariamente es red porque dos elementos incomparables pueden tener mas de un supremo o mas de un infimo, y esto no cumple con la propiedad de red.

#### **Red Algebraica**

$\text{Sea un conjunto }A\neq \varnothing,\\\text{y dos operaciones binarias} * \text{ y } *^\prime$

**$(A;*;*^\prime)$  es Red Algebraica $\iff$ las operaciones son Cerradas, Asociativas, Conmutativas, Idempotentes y cumple con absorcion.**

Toda red ordenada se puede expresar como red algebraica. Y toda red Algebraica se puede expresar como red ordenada.


#### Complemento de un elemento

El complemento de un elemento $a$ es aquel que operado con $a$ me da el primer elemento o ultimo elemento.

#### **Red complementada**

$\text{Una red  es complementada} \iff \text{cada elemento tiene al menos un complemento}$

#### **Distributividad**

* En toda red distributiva el complemento, si existe, es unico.
* Toda red finita es distributiva sii no contiene ninguna subred isomorfa a alguna de las siguientes
  * Es sub red si al suprimir un elemento se concervan los supremos e infimos.

#### **Algebra de Boole**

Un algebera de boole es una red distributiva y complementada

Sea $(B;\lor;\land)$ diremos que es Algebra de Boole si:
* $\lor$ e $\land$ son operaciones binarais cerradas en B.
* $\lor$ e $\land$ son conmutativas.
* $\lor$ e $\land$ son distributivas entre si.
* $\lor$ e $\land$ tienen elementos neutros $0_B$ y $1_B$ respectivamente.
* todos los elementos de B tienen complementos.

* $(D_n)$ es Algebra de Boole $\Leftrightarrow n$ es producto de primos distintos.
* El cardinal de toda Algebra de Boole es potencia de 2.


En toda Algebra de Boole $(B;\lor;\land)$ se cummple:

1. Todos los elementos $0_B$ y $1_B$ son unicos.
2. Todo elemento tiene unico complemento.
3. Todo elemento es idempotente: $\forall a\in B: a=a\quad a\land a =a$
4. Los elementos neutros se complementan mutuamente: $\overline{1_B}=0_B\quad\overline{0_B}=1_B$
5. Todo elemento neutro es involutivo $\forall a\in B:\overline{\overline{a}}=a$
6. El elemento neutro para $\land$ es el $1_B$ y es absorbente para $\lor$.
7. El elemento neutro para $\lor$ es el $0_B$ y es absorbente para $\land$.
8. Se cumple la absorcion: $\forall a,b \in B: a\lor( a\land b)= a$ y $a\land (a\lor b) = a$
9. Se cumple la propiedad asociativa de $\lor$ e $\land$. 


#### **Sub Algebra de Boole**

$\text{Sea } (B;\preceq) \text{ un Algebra de Boole, y }\varnothing\neq A\sube B, A\text{ es subalgebra de } B \Leftrightarrow (A,\preceq_{/A})$ es algebra de boole, y se mantienen los mismos supremos e infimos y elementos neutros.

#### **Homomorfismos de Algebras de Boole**:

Sean $(A,\lor,\land)$ y $(B,\lor^\prime,\land^\prime)$ dos Algebras de Boole, con primeros elementos $0_A$ y $0_B$ respectivamente, y ultimos elementos $1_A$ y $1_B$

Un homomorfismo de Algebras de Boole es una funcion $f:A \to B/$

* $f(\overline{a}) = \overline{f(a)}$
* $f(a\lor b) = f(a) \lor^\prime f(b)$
* $f(a\land b) = f(a) \land^\prime f(b)$
* $f(0_A) = 0_B$
* $f(1_A) = 1_B$

Si la funcion es bitectiva, se denomina **isomorfismo**. Para ello es necesario que los conjuntos tengan cardinales iguales. *"Dos redes son isomorfas cuando tienen la misma forma aunque distintos elementos".*

* Toda Algebra de Boole es isomorfa al conjunto de Partes de sus Atomos
  * Hay tantos isomorfimos como el factorial de la cantidad de atomos.



