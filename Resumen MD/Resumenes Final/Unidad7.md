# Unidad 7: Congruencias en $\Z$

Congruencia modulo n

> $$\text{En }\Z: \quad aRb \Leftrightarrow a\equiv b(n)\Leftrightarrow n\vert a-b$$

* Propiedad:

> $$\forall x,y\in \Z : \text{Si } x\in\overline{a}(n)\land y\in\overline{b}(n) \rArr x+y \in \overline{a+b}(n)$$

> $$\forall x,y\in \Z : \text{Si } x\in\overline{a}(n)\land y\in\overline{b}(n) \rArr x\cdot y \in \overline{a\cdot b}(n)$$

## Funcion de Euler

> $$ \phi (n) = \lvert \{x\in\N / x\leq n\land \text{mcd}(x,n)=1 \}  \rvert $$

Osea me devuelve cuantos numeros coprimos hay hasta el numero $n$

> 1. Si $p$ es un numero primo, entonces: $\phi(p)=p-1$
> 2. Si n es un numero natural y p es numero primo:
> $$ \phi(p^n) = p^n\cdot \left(1-\frac{1}{p}\right) \quad \phi(p^n) =p^{n-1}(p-1) $$
> 3. 	Si $n,m\in\N \text{ y mcd}(n,m)=1:\phi(n\cdot m)=\phi(n)\cdot \phi(m)$
> 4. $$ \phi(n)= n\cdot \left(1-\frac{1}{p_1}\right)\cdot \left(1-\frac{1}{p_2}\right)\cdot\cdots\cdot\cdot \left(1-\frac{1}{p_r}\right) $$

## Teorema de Fermat

> $\text{Si }p\text{ es primo} \land \text{mcd}(a,p)= 1\rArr a^{p-1}\equiv 1(p)$
> 
> Este teorema se usa para ir simplificando los exponentes para verificar si el resto de una division cae en una clase

## Teorema de Euler-Fermat

> $$\text{Si mcd } (a,n)=1 \rArr a^{\phi(n)}\equiv 1(n)$$


## Ecuaciones Lineales de Congruencia

> $$a\cdot x\equiv b(n) $$

> $\text{Sea } a\cdot x\equiv b(n).\qquad \text{Si mcd }(a,n)=1 \text{ entonces hay solucion.}$
> 
> $$ x=a^{\phi(n)-1}\cdot b $$


> $$ a\cdot x \equiv b(n) {\small\text{ tiene solucion }} \Leftrightarrow \text{mcd}(a,n)\vert b\quad {\small\text{ y la cantidad de soluciones es }} \text{mcd} (a,n) $$
> 
> Esto sirve tambien para simplificar las ecuaciones, se puede dividir termino a termino por la cantidad de soluciones, luego resolver la ecuacion, y finalmente **al resultado de la eq simplificada se le suma el modulo simplificado la cantidad de soluciones que hallamos obtenido.**

> $$\text{Si}: a\cdot c\equiv b\cdot c(n)\land \text{mcd}(c,n)=1 \\\text{Entonces }a\equiv b(n)$$