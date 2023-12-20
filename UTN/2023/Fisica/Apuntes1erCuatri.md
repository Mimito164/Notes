# Óptica  
  
## Formula de Descartes (Espejos Cóncavos)  
$$  
\frac{1}{x}+\frac{1}{x'}=\frac{1}{f}  
$$  
  
## Distancia Focal  
  
$$  
f=\frac{R}{2}  
$$  
  
## Aumento (Espejos Cóncavos)  
  
$$  
A = \frac{y'}{y} \quad A= \frac{-x'}{x}  
$$  
  
## Índice de la Refracción  
  
$$  
n = \frac{c}{v_{luz}}  
$$  
  
### Índices de refracción  
$$  
n_{\text{vacio}} = 1 \\
n_{\text{agua}} = 1.33 
$$  

## Espejos


| Espejo Convexo ( | Virtual o Real | Derecha o Invertida | Aumentada o Reducida |
|:---:|:---:|:---:|:---:|
| S > F | Virtual | Derecha | Reducida |
| S = F | Virtual | Derecha | Reducida |
| S < F | Virtual | Derecha | Reducida |


| Espejo Concavo ) | Virtual o Real | Derecha o Invertida | Aumentada o Reducida |
|:---:|:---:|:---:|:---:|
| S > C | Real | Invertida | Reducida |
| C > S > F | Real | Invertida | Aumentada |
| S = C | Real | Invertida | Sin efecto |
| S < F | Virtual | Derecha | Aumentada |

## Lentes


## Ley de Snell  
  
$$  
n_i \cdot\sin\theta_i =n_r \cdot\sin\theta_r  
$$  
  
### Aproximación de Pequeña abertura  
$$  
\sin\theta \approx \tan \theta  
$$

# Cinemática

## Formula de Desplazamiento
$$
\Delta\vec{r} = \vec{r}(t + \Delta t) - \vec{r}(t)
$$

## Formula de Velocidad Media
$$
\langle \vec{v}\rangle = \frac{\vec{r}(t + \Delta t) - \vec{r}(t)}{t+\Delta t - t}
$$

## Formula de Posición
$$
\vec{r} = \vec{v}\cdot(t-t_0)+\vec{r}_0
$$
*Acá faltaría agregar la aceleración* 

## Formula de Aceleración Media
$$
\langle\vec{a}\rangle = \frac{\vec{v}-\vec{v}_0}{\Delta t}
$$
 
 ## Formula de MRUV
*Si la aceleración es constante:*
$$
\vec{a} = \text{cte} \\
\vec{v}(t) = \vec{a}\cdot(t - t_0) + \vec{v}_0 \\
\vec{r}(t) = \frac{1}{2}\vec{a}\cdot (t-t_0)^2+\vec{v}_0\cdot(t-t_0)+\vec{r}_0
$$

## Movimiento Circular

### Velocidad Angular Media ($\langle\vec{\omega}\rangle$)

$$
\langle\vec{\omega}\rangle = \frac{\Delta\vec{\theta}}{\Delta t}
$$

### Aceleración Angular Media ($\langle\vec{\alpha}\rangle$)
$$
\langle\vec{\alpha}\rangle = \frac{\Delta\vec{\omega}}{\Delta t}
$$
 
### Periodo, Frecuencia, Omega
$$
f = \frac{\text{numero de vueltas}}{\text{tiempo empleado en girar}} \\
f = \frac{1}{T}
$$
$$
\omega = 2\pi f
$$

### Velocidad Tangencial

$$
v = \omega \times R\\
\lvert v\rvert = \lvert\omega\rvert\cdot\lvert R\rvert\cdot\sin 90
$$

### Aceleración Radial (Centrípeta?)
$$
a_\text{rad} = \frac{v^2}{R}
$$

### Aceleración Tangencial
$$
a = \alpha \times R\\
\lvert a\rvert = \lvert\alpha\rvert \cdot \lvert R \rvert \cdot \sin 90
$$

 ### Aceleración ¿¿¿???
$$ a = \omega^2 \cdot R$$

### Ejercicio Péndulo Cónico

#### DCL:
{![](data:image/png;base64,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)}

# Dinámica
$$
\sum \vec{F} = m \cdot \vec{a}
$$

**La normal siempre se opone al plano**

## Rozamiento

$$
F_{rc} = \mu_c \cdot N
$$

$$
F_{re} = \mu_e \cdot N
$$

Hay una fuerza de rozamiento estático **máximo**, si se ejerce una fuerza sobre un cuerpo y esta no supera la $F_{re_{max}}$ el cuerpo permanece quieto, y la fuerza de rozamiento pasa a ser igual a la fuerza sobre el cuerpo.

## Fuerza Elástica
$$
\vec{F}_\text{ext} = k\cdot \vec{x}
$$
- $\vec{F}_\text{ext}$ fuerza aplicada al resorte
- $k$ constante elástica
- $\vec{x}$ vector de variación de longitud

$$
\vec{F}_e = -k \cdot \vec x
$$

### Resortes en Serie
$$
k_{eq} = \frac{1}{ \frac{1}{k_1} + \frac{1}{k_2}} = (k_1^{-1} + k_2^{-1})^{-1}
$$
### Resortes en Paralelo
$$
k_{eq} = k_1 + k_2
$$

# Trabajo y Energía

## Trabajo

$$
W_{[Joule]} = \vec F \cdot \Delta\vec x
$$

$$W = F \cdot \Delta x\cos \phi $$

## Energía cinética 

SI las fuerzas son constantes 

$$K = \frac{1}{2}\cdot mv^2 - \frac 1 2 mv_0^2 $$

$$K=\frac 1 2 mv^2$$

$$W_\text {peso} = \Delta K$$

## Potencia media


$$P_\text{med} = \frac {\Delta W} {\Delta t}  $$
$$ P = F \cdot v$$

$$ 1hp = 746W $$

## Energía potencial gravitatoria

$$\Delta U_g = mg\cdot y_2 - mg\cdot y_1  $$

$$W_\text {peso}= -\Delta U_g$$

$$\Delta K = - \Delta U_g$$

$$K_2 - K_1 = - (U_{g_2}-U_{g_1})$$

$$\frac 1 2 mv_2^2 - \frac 1 2 mv_1^2 = mg\cdot y_1 - mg\cdot y_2$$

$$\frac 1 2 mv_2^2 + mg\cdot y_2 = \frac 1 2 mv_1^2 + mg\cdot y_1$$

## Energía Mecánica

*Si realizan trabajo otras  fuerzas además del peso*

$$\sum W = \Delta K\Rarr W_\text{otras} + W_\text{peso} = \Delta K \\ W_\text{peso} = -\Delta U_g\\
W_\text{otras} + (-\Delta U_g) = \Delta K\\
W_\text{otras}= \Delta K + \Delta U_g\\
W_\text{otras}=\Delta E$$

## Energía Potencial Elástica

$$ U_e = \frac 1 2 kx^2$$

$$W_{el} = -\Delta U_e$$

## Todas

$$\sum W_{ext} = \frac 1 2 mv_2^2 + mg\cdot y_2 + \frac 1 2 kx_2^2  - \left( \frac 1 2 mv_1^2 + mg\cdot y_1 + \frac 1 2 kx_1^2\right)$$