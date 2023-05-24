> Dados dos numeros $D$ y $d$, con $d\neq0$, existen y son unicos otros dos enteros $c$ y $r$ tales que: 
> $D=c\cdot d+r$ y $0\le r < \lvert d\rvert$


> $a\vert b \iff \exist \,k \in \Z / b = k \cdot a$

#### **Propiedades**

1. $\forall a \in \Z: a\vert a \quad \forall a \in \Z: a=a\cdot 1 \land 1\in\Z \rArr a\vert a$

2. $\forall a,b,c \in \Z: a\vert b \land b\vert c \rArr a\vert c\quad  \forall a,b,c \in \Z: a\vert b \land b\vert c \rArr ^{(1)} b=a\cdot k \land c=b\cdot t\rArr c = (a\cdot k) \cdot t\rArr c=a\cdot (k\cdot t) \rArr a\vert c \\(1): k,t \in \Z$

3. $\forall a,b,c \in \Z: a\vert b \land a\vert c \rArr a\vert (b+c)\quad \forall a,b,c \in \Z: a\vert b \land a\vert c \rArr b =a\cdot k \land c=a\cdot q \rArr b+c = a\cdot k + a\cdot q\rArr b+c = a\cdot (k+q)\rArr a\vert (b+c)$

4. $\forall a,b,c \in \Z: a\vert b \rArr a\vert (b\cdot c) \quad \forall a,b,c \in \Z: b=a\cdot k \rArr b\cdot c = (a\cdot k)\cdot c\rArr b\cdot c = a\cdot(k\cdot c)\rArr a\vert (b\cdot c)$


> Sean, $p,a,b\in \Z:$ Si $n\vert a\cdot b \land p:\text{primo}\rArr n\vert a \lor n\vert b$





> $mcm(a,b) \cdot mcd(a,b) = \lvert a\cdot b\rvert$ 

> $d=\text{mcd}(a,b) \rArr d=s\cdot a+t\cdot b\text{ con s,t}\in\Z$
#### **Algoritmmo de Euclides**

> Dados dos enteros $a$ y $b$, el $\text{mcd}(a,b) = \text{mcd}(b,r)$ siendo $r$ el resto de la division de $a$ por $b$.

* Dado un conjunto: $D_{a,b}=\{ x\in \Z/ x\vert a \land x\vert b \}$


$$
	\text{Demostrar: } D_{a,b} \subseteq D_{b,r} \\
	\forall x \in D_{a,b} \rArr x\vert a \land x\vert b \rArr x\vert b\cdot q+r \land x\vert b \land x\vert b \\
	\rArr x\vert b\cdot q+r \land x\vert b\cdot(-q) \land x\vert b \\
	x\vert b\cdot q + r + b\cdot (-q) \land x\vert b \\
	x\vert r \land x\vert b \rArr x\in D_{b,r}
$$

#### **Teorema de Bezout**

> $\text{mcd}(a,b) = 1 \iff 1 = s\cdot a + t\cdot b \text{ con } s,t\in\Z$

Esto solo sucede si y solo si el mcd$(a,b) = 1$. 


* **TENER MUY EN CUENTA QUE SE ESTA TRABAJANDO EN $\mathbf{Z}$, POR LO TANTO LOS NUMEROS NEGATIVOS TAMBIEN CUENTAN.**
* En ejercicios de **divisibilidad** van a expresar una division con palabras. El primer paso es entenderla, luego nos van a dar otra division distinta, pero que hace uso de la primera. La clave esta en tratar de expresar toda esta nueva expresio como una division del caracter que nos estan pidiendo.
* Tener en cuenta la propiedad de [Bezout](#teorema-de-bezout)
  * Este al ser un bicondicional se cumple en ambos sentidos, es decir si cumple con mcd = 1 tambie cumple con la combinacion lineal.
* Si el mcd entre dos numeros me da un numero $d$ este se puede expresar como combinacion lineal, pero si una combinacion lineal da un numero d, este no necesariamente es el mcd entre dos numeros.

