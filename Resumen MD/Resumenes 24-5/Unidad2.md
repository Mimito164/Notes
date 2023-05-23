| **Operacion**        |                      **Formula**                      |
|:---------------------|:-----------------------------------------------------:|
| Union                |     $A \cup B = { x/ x \in A \lor x \in B }$      |
| Interseccion         |     $A \cap B = { x/ x \in A \land x \in B }$     |
| Diferencia           | $A - B = A \cap \neg B ={ x/ x \in A \land x \notin B }$ |
| Complemento          |                   $\neg A = U - A$                    |
| Diferencia Simetrica | $A \Delta B = { x/ x \in A \veebar x \in B }$  |

$|P(A)| = 2^{|A|}$

> 1. $v[ p(1) ] = V$   Paso base.
> 2. $v[ p(h) ] = V \rArr v[ p(h+1) ] = V$   Paso inductivo.

<div style="text-align:center">
<table style="margin:auto">
<tr>
	<th style="text-align:center">Suma</th>
	<th style="text-align:center">Multiplicacion</th>
</tr>
<tr><td>


|    $+$    | **Par** | **Impar** |
|:---------:|---------|:---------:|
|  **Par**  | Par     |   Impar   |
| **Impar** | Impar   |    Par    |

</td><td>

| $\times$  | **Par** | **Impar** |
|:---------:|---------|-----------|
|  **Par**  | Par     | Par       |
| **Impar** | Par     | Impar     |

</td></tr></table></div>

$\begin{aligned}
	(h+1)^0 &= 1 \\
	(h+1)^1 &= h^1+1 \\
	(h+1)^2 &= h^2 + 2h + 1 \\
	(h+1)^3 &= h^3 + 3h^2 + 3h + 1 \\
	(h+1)^4 &= h^4 + 4h^3 + 6h^2 + 4h + 1 \\
	(h+1)^5 &= h^5 + 5h^4 + 10h^3 + 10h^2 + 4h + 1
\end{aligned}$

2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97

* En ejercicios de **divisiblilidad** quiza convenga descomponer algun numero en la suma o resta de dos numeros, la idea es que alguno de estos dos sea multiplo del numero que se busca
  * Puede llegar a suceder que en algn caso tenga que evaluar si $h$ es impar o par, para evaluar si se puede hacer un factor comun o algo del estilo hasta llegar al multiplo que se busca. 
  * Si se tiene una suma de potencias lo mejor es tratar de descomponer la suma del exponente (si es que hay).
* En ejercicios de **inecuaciones** es bastante complicado poder desarrollar el ejercicio, lo que se recomienda es usar la logica y reemplazar por valores relacionados de alguna forma con la hipotesis.
  * en general estos tienen una limitacion para $n$ por ejemplo $n\geq5$ en este caso se sabe que n tiene que ser mayor o igual que 5, esto nos sirve para reemplazarlo en alguna expresion. 
  * En casos raros puede que tengas que reemplazar un termino por otro completamente distinto, mientras que se mantenga la desigualdad, vale. Recordar que siempre el objetivo es llegar a una expresion relacionada con nuestra tesis.
* En ejercicios de **sumatoria** es necesario "sacarnos" la sumatoria de en medio, para esto podemos descomponer la sumatoria en una suma de la sumatoria y otra expresion.