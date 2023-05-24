#### Clasificacion de Relaciones de Recurrencia

1. Orden: Es la mayor diferencia entre los subindices de los elementos de la sucesion. Cuantos terminos anteriores hay que conocer para obtener uno particular.
2. Grado: Es el mayor exponente al que estan elevados los elementos de la sucesion que figuran en la relacion de recurrencia.
3. Ecaucion Homogenea: Al igual que las ecuaciones algebraicas, las ecuaciones homogeneas son las que no tienen terminos independientes. Es la ecuasion solamente con los $a_n$
4. Coeficientes Constantes: en estas ecuaciones ninguno de los coeficientes de los elementos de la sucesion dependen de n. Por el contrario si alguno depende de n, se dice que la ecuacion tiene coeficientes variables.

#### Tipos de Relaciones de Recurrencia con las que laburamos:

<table>
<thead>
  <tr>
    <th colspan="2">Lineales de Orden 1</th>
    <th colspan="2">Lineales de Orden 2</th>
  </tr>
</thead>
<tbody>
<tr>
<td>Homogeneas</td>
<td>No Homogeneas</td>
<td>Homogeneas</td>
<td>No Homogeneas<br></td>
</tr>
<tr>
<td>

$a_n= k\cdot a_{n-1}\\\to a_n = k^n\cdot a_0$

</td>
<td>

$c_n a_n + c_{n-1} a_{n-1} = f(n)\\\to an = a_{nH} + a_{nP}$

</td>
<td>

$c_n a_n + c_{n-1} a_{n-1} + c_{n-2} a_{n-2} = 0\\\to a_n = k_1\cdot r_1^n+k_2\cdot r_2^n\\\to k_1\cdot r_1^n + k_2\cdot nr_1^n$

</td>
<td>

$c_n a_n + c_{n-1} a_{n-1} + c_{n-2} a_{n-2}= f(n)\\\to an = a_{nH} + a_{nP}$
</td>
</tr>
</tbody>
</table>

**Para poder resolver una relación de recurrencia de orden n se
necesitan conocer n condiciones iniciales**

#### **Lineales de orden 1, Homogeneas**

1. Despejar $a_n$
2. Se obtiene el $k$ es lo que multiplica a $a_{n-1}$
3. Reemplazar $a_{n-1}$ por $a_0$

Aclaracion: En estos casos se despeja el $a_n$ de mayor indice.

#### **Lineales de orden 2, Homogeneas**

1. Se iguala el polinomio a 0.
2. Se reemplaza $a_n$ por $x^n$
3. se saca factor comun del $x^n$ de menor grado. Debe quedar una cuadratica. El termino que quedo fuera multiplicando se elimina
4. Calcular las raices de la cuadratica $r_1,\ r_2$
5. Armar la eq. Con los datos de $a_0$ y $a_1$ se arma un sistema de ecuaciones para calcular $k_1$ y $k_2$


#### **Lineales de orden 1, No Homogeneas**

1. De la formula recursiva se obtiene la homogenea asociada, es decir sin constantes solo $a_n$'s.
2. Se obtiene la solucion de la homogenea asociada ($a_{nH}$), para ello seguir el instructivo correspondiente, solo que **no se reemplaza el dato que nos dieron, eso va al final**
3. Ahora hay que obtener la solucion particular ($a_{nP}$). Dependiendo del termino independiente se usa la tablita para reemplazar los $a_n$'s por la solucion particular de la tablita.
4. Esto nos deberia dar un numero, ese numero es $a_{nP}$. Recien ahi se puede armar la formula $a_n = a_{nH} + a_{nP}$, **ahora si reemplazando el dato que nos dieron en la formula**.
   1. Si al intentar obtener $a_{nP}$ llegamos a un absurdo, entonces se multiplica la solucion particular propuesta por $n$.


$f(n)$|Solucion Particular Provable
:-:|:-:
$K\small (cte)$ | $B \small (cte)$
$Kn$ | $Bn + C$
$Kn^2$ | $Bn^2 + Cn + D$
$Kn^t$ | Polinomio completo de grado $t$
$Ka_n$ | $Ba_n$

**ACLARACION**: Si aparece un termino como $Kt^n$ la solucion particular sera $Bt^n$



#### **Lineales de orden 2, No Homogeneas**

idem anterior, solo que la solucion de la homogenea asociada corresponde a la ecuacion Lineal de Orden 2.

1. Obtener la $a_nH$ de la homogenea orden 2.
2. Obtener el $a_nP$ con la tabla y el termino independiente.
   1. Si se llega a absudo multiplicar todo por $n$