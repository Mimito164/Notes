
> $\ast$ es una operacion binaria cerrada en $A$ sii: $\forall x,y\in A: x\ast y\in A$

> Sea un conjunto $A\neq \varnothing\\\ast:A\times A\to A$ es operacion cerrada en A $\lrArr\ast$ es funcion.

Tambie se llama ley de cierre o lci

#### Propiedades y elementos notables de una OP cerrada

Sea $A\neq \varnothing$ y $*$ es una operacion cerrada definida en $A$

Asociatividad:
$\forall a,b,c\in A: (a*b)*c = a*(b*c)$

Conmutativa: 

$\forall a,b\in A: a*b=b*a$

matricialmente la matriz debe ser simetrica


Elemento neutro:

$\exist e\in A: \forall a\in A: e*a = a*e = a$

matricialmente tiene que aparecer el numero correspondiente a la columna o a la fila en toda dicha col o fila. Respeta al otro numero

Elemento simetrico:

$a\prime\in A/ a*a\prime=a\prime*a= e$

Elementos Idempotentes:

$a*a=a$

matricialmente la diagonal principal tiene que corresponder con la col o fila

Absorvente:

$\forall a\in A: b*a=a*b=b$

impone su valor operado con cualquiera
  
**Operaciones combinada**

Se tiene que verificar si:
* es cerada
* es asociativa
* conmutativa
* tiene neutro, despejar el neutro
* tiene simetrico, despejar absovente, puede quedar un elemento simetrico que dependa de otro
* idempotente.
* tiene absorvente

**el neutro siempre es idempotente**

Sea $A\neq \varnothing$ y $*$ es una operacion binaria definida en $A$:

1. Si $*$ es op. cerrada $\rArr (A;*)$ es **Grupoide**
2. Si ademas $*$ es asociativa  $\rArr (A;*)$ es **Semigrupo**
3. Si ademas $*$ tiene neutro $\rArr (A;*)$ es **Monoide**
4. Si ademas $*$ tiene simetrico $\rArr (A;*)$ es **Grupo**

- Si ademas $*$ es conmutativa se le agraga el calificativo **Abeliano**

1. el elemento neutro es unico
2. el eutro es su propio simetrico $e = e\prime$
3. propiedad involutiva del simetrico $\forall a\in A: (a\prime)^\prime= a$
4. el simetrico de un elemetno es unico
5. $\forall a,b\in A: (a*b)^\prime= a^\prime*b^\prime$
6. las ecuaciones lineales tienen solucion unica
7. el unico elementoidempotente es el elemento neutro
8. $\forall a,b,\in A: a^\prime=b \rArr b^\prime=a$


#### Elementos Regulares

Sea $(A;*)$ un semigrupo con neutro.

$a\in A\text{ es regular a izquierda} \lrArr a*x = a*y = x=y$

$a\in A\text{ es regular a derecha} \lrArr x*a = y*a = x=y$

> El elemento $a\in A$ es regular si es regular a izquierda y a derecha

> Sea $(A;*)$ un semigrupo con neutro. El conjunto de inversibles de $A$ es:
>
> $\text{INV}(A) = \{a\in A / a'\in A\}$

> Sean $(G_1;*_1)$ y $(G_2;*_2)$ dos grupos con neutros $e_1$ y $e_2$ respectivamente:
>
> El conjunto $G_1\times G_2$ se define de la siguiente operacion $*$ tal que:
>
> $$(a;b) * (c;d) = (a*_1 c; b*_2 d)$$
>
> $(G_1\times G_2;*)$ es grupo y se denomina GRUPO PRODUCTO


* Si $*_1$ y $*_2$ son conmutativas entonces $*$ tambien es conmutativa

> Sea $(G;*)$ un grupo y sea $H\neq\varnothing\;\; H\subseteq G$
>
> Si $(H;*)$ es grupo entonces $H$ es subgrupo de  $G$

#### Subgrupos espaciales

> $(\{e\};*)$ es subgrupo trivial de $(G;*)$
>
> $(G;*)$ es subgrupo impropio de $(G;*)$

* el resto de subgrupos se denomina subfgupos propios


#### Teorema de condicion necesaria y suficiente de subgrupos

> Sea $(G;*)$ un grupo. H  es subgrupo de G si: $H\neq \varnothing$, $H\sube G$, $\forall a,b\in H\rArr a*b'\in H$


Si $(G;*)$ es un grupo y $H$ es un subconjunto finito no vacio, entonces $H$ es subgrupo de $G$ sii $*$ es cerrada en $H$

#### Generadores. Grupos Ciclicos

> Sea $(G;*)$ un grupo y $a\in G$. Llamamos **Subgrupo ciclico de G generado por a** al siguiente conjunto: $<\!a\!> = \{a^n/n\in \Z\}$ 

> Un grupo $(G;*)$ es ciclico $\lrArr \exist a \in G$ tal que $<\!a\!> = G$ 

> 1. Todo grupo ciclico es abeliano
> 2. Todo subgrupo de un grupo ciclico es ciclico

> Sea $(G;*)$ un grupo y $a\in G$
>
> El orden de un elemento es el cardinal del subgrupo que genera. 
> 
> El orden de un subgrupo es el orden de su generador, o bien el cardinal del subgrupo

> Dado un grupo $(G;*)$ con neutro $e$, entonces el conjunto de todos los subgrupos puede ser ordenado por la inclusion.

> Si $G$ es finito, entonces: (subgrupos de $G;\sube\,$) es una Red con primer elemento, el subgrupo trivial, y ultimo elemento, el subgrupo impropio.

#### Propiedades de los grupos $(Z_n;+)$

> * Todos los grupos $(Z_n;+)$ son ciclicos.
> * Sus generadores son: $\overline{k}/\text{mcd}(k,n)=1, 1\leq k\leq n-1$
> * La cantidad de subgrupos de $\Z_n$ es: $|D_n|$
> * Cada subgrupo tiene por cardinal a uno de los elementos de $D_n$
> * La red de subgrupos es isomorfa a $(D_n;|\,)$

#### Relaciones de Congruencia

> Sea $(G;*)$ un semigrupo con neutro $e$
> 
> Sea $\sim$ una relacion de equivalencia en $G$.
>
> $$\sim\text{ es compatible a izquierda con }*\lrArr \forall a,b,x\in G: a\sim b\rArr x*a\sim x*b$$
> $$\sim\text{ es compatible a derecha con }*\lrArr \forall a,b,x\in G: a\sim b\rArr a*x\sim b*x$$


> La relacion $\sim$ es compatible con $*$ (o es de congruencia) $\lrArr$ es compatible a derecha y a izquierda.

> Las relaciones de congruencia generalizan las propiedades de la congruencia modulo $n$ y pueden recibir otros nombres como *"compatible"* respecto de la operacion de grupo o *"estable"*

> $\sim$ es compatible con $* \lrArr \forall a,b,c,d\in G:a\sim b\land c\sim d\rArr a*c\sim b*d$

#### Teorema Fundamental de Compatiblidad

> Sea $(G;*)$ un semigrupo con neutro $e$ y $\sim$ una relacion de equivalencia compatible con $*$ Entonces el conjunto cociente $(G/\sim;\bar*)$ es un semigrupo con neutro, siendo la $\bar*$ la siguiente $\bar a \bar* \bar b=\overline{a*b}$

> Si $(G;*)$ es grupo entonces $(G/\sim\,;\bar*)$ tambien es grupo.
>
> Si $(G;*)$ es abeliano entonces $(G/\sim\,;\bar*)$ tambien es abeliano.

> *El teorema garantiza que si la relacion de equivalencia es cmpatible, la estructura del conjunto cociente es la misma que la del conjunto original. O sea, se "traspasa" la estructura y las propiedades estructurales.*

#### Congruencia Modulo un Subgrupo

> Sea $(G;*)$ un grupo y $H$ un subgrupo de $G$
>
> Definimos la siguiente relacionen $G$:$\quad a\equiv_d b(H)\lrArr a*b'\in H$
>
> *se lee: $a$ es congruente a derecha con $b$ modulo $H$*

Demostraciones

1. Reflexiva:

	$a*a'=e\land e\in H \rArr a\equiv_d a(H)$
2. Simetrica:

	$a\equiv_d b(H)\lrArr a*b'\in H\lrArr (a*b')'\in H\lrArr b*a'\in H\lrArr b\equiv_d a(H)$
3. Transitiva:

	$a\equiv_b(H)\land b\equiv_c(H)\lrArr a*b'\in H\land b*c'\in H\lrArr\lrArr(a*b')*(b*c')\in H\lrArr a*(b*b')*c'\in H\lrArr\lrArr a*e*c'\in H\lrArr a*c'\in H\lrArr a\equiv_d c(H)$

Por lo tanto es una relacion de **equivalencia**

> Sea $(G;*)$ un grupo y $H$ un subgrupo de $G$
>
> Definimos la siguiente relacionen $G$:$\quad a\equiv_i b(H)\lrArr a'*b\in H$
>
> *se lee: $a$ es congruente a izquierda con $b$ modulo $H$*

#### Propiedades:

1. La congruencia modulo $H$, tanto a derecha como izquierda, es una relacion de equivalencia.
2. Si $(G;*)$ es un grupo abeliano, entonces la congruencia a derecha coincide con la congruencia a izquierda.
3. Es un caso particular de la congruencia modulo $H$, considerando $H=n\Z=\{x\in\Z/x=nk,k\in\Z\}$

	$$a\equiv b(H)\lrArr a*b'\in H\lrArr a+(-b)\in H\lrArr a-b =nk\lrArr n|a-b\lrArr a\equiv b(n)$$
4. La clase de equivalencia de cualquier elemento de $a$ de $G$ es:

	$$\overline{a_d} = H*a\text{ en la relacion de congruencia a derecha}$$
	$$\overline{a_i} = a*H\text{ en la relacion de congruencia a izquierda}$$

5. $|H| = |H*a| = |a*H|$
6. La relacion de congruencia modulo $H$ (tanto a derecha como a izquierda) por ser de equivalencia, produce una particion en el conjunto.

#### Indice de un subgrupo

> Sea $(G;*)$ un grupo y $H$ un subgrupo de $G$
>
> El indice de $G$ en $G$ es la cantidad de clases de equivalencia modulo $H$.
>
> Se indica $[G:H]$

#### Teorema de Lagrange

> Sea $(G;*)$ un grupo de orden finito $n$ y $H$ un subgrupo de $G$
>
> Entonces, el orden de $G$ divide al orden de $G$

(orden es cantidad de elementos)

#### Subgrupo Normal

> Sea $(G;*)$ un grupo con neutro $e$ y $H$ un subgrupo de $G$
>
> $H$ es un subgrupo **normal** $\lrArr$ las clases a derecha coinciden con las clases a izquierda

#### Teorema: Grupo Cociente o Grupo Factor

> Sea $(G;*)$ un grupo y $H$ un subgrupo normal de $G$
>
> * $(G/H,\bar * )$ es grupo siendo $\bar a\bar *\bar b=\overline{a*b}$
> * El cardinal de $G/H$ es $[G:H]$

* Este grupo se llama grupo cociente de $G$ modulo $H$


#### Homomorfismos de Grupos

> $(G_1;*_1)$ y $(G_2;*_2)$ dos grupos con neutros $e_1$ y $e_2$ respectivamente:
>
> $$f:G_1\to G_2\textbf{ es homomorfismo}\lrArr\begin{cases}
	f\text{ esfuncion}\\
	\forall a,b\in G_1:f(a*_1b) = f(a)*_2f(b)
\end{cases}$$

#### Propiedades de los Homomorfismos:

> Sea $f:(G_1;*_1)\to (G_2;*_2)$ un homomorfismo de grupos
>
> 1. $f(e_1) = e_2$
> 2. $\forall a\in G_1: f(a') = [f(a)]'$

#### Clasificacion de Homomorfismo

> Sea $f:G_1\to G_2$ un homomorfismo de grupos:
>
> * Si $f$ es inyectiva, $f$ se llama **monomorfismo**
> * Si $f$ es sibreyectiva, $f$ se llama **epimorfismo**
> * Si $f$ es biyectiva, $f$ se llama **isomorfismo**
> * Si $G_1 = G_2$, $f$ se llama **endomorfismo**
> * Si $G_1 = G_2$ y $f$ es biyectiva, $f$ se llama **automorfismo**


#### Nucleo de un homomorfismo

> Sea $f:G_1\to G_2$ un homomorfismo de grupos.
>
> Se define: $\text{Nu}(f) = \{x\in G_1 / f(x)= e_2\}$


#### Propiedades del Nucleo

> Sea $f:(G_1;*_1)\to(G_1;*_1)$ un homomorfismo de grupos. Entonces:
>
> $$(\text{Nu}(f);*_1)\text{ es subgrupo de }(G_1; *_1)$$

> Sea $f:(G_1;*_1)\to(G_1;*_1)$ un homomorfismo de grupos. Entonces:
>
> $$ \text{Nu}(f)=\{e_1\}\lrArr f \text{ es inyectiva} $$


#### Imagen de un homomorfismo

> Sea $f:(G_1;*_1)\to(G_1;*_1)$ un homomorfismo de grupos. 
>
> Se define: $\text{Im}(f) = \{y\in G_2/\exist x\in G_1\land f(x)=y\}$
>
> $$ (\text{Im}(f);*_2) \text{ es subgrupo de } (G_2;*_2)$$

#### Preimagen o Imagen Reciproca

> Sea $f:G_1\to G_2$ un homomorfismo de grupos, $B\sube G_2$
> $$f^{-1}(B)=\{x\in G_1/f(x)\in B\}$$

