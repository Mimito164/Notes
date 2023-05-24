#### **Tabla de Leyes Logicas**

| **#** | **Nombre**       |                                                   **Propiedad**                                                   |
|:-----:|:-----------------|:-----------------------------------------------------------------------------------------------------------------:|
|   1   | Involucion       |                                              $\neg(\neg p) \equiv p$                                              |
|   2   | Conmutatividad   |                              $p \land q \equiv q \land p   p \lor q \equiv q \lor p$                              |
|   3   | Asociatividad    |           $p \land (q \land r) \equiv (p \land q) \land r   p \lor (q \lor r) \equiv (p \lor q) \lor r$           |
|   4   | Distributividad  | $p \land (q \lor r) \equiv (p \land q) \lor (p \land r) \\ p \lor (q \land r) \equiv (p \lor q) \land (p \lor r)$ |
|   5   | Idempotencia     |                                     $p \land p \equiv p   p \lor p \equiv p$                                      |
|   6   | De Morgan        |             $\neg (p \land q) \equiv \neg p \lor \neg q   \neg(p \lor q) \equiv \neg p \land \neg q$              |
|   7   | Absorcion        |                           $p \land (p \lor q) \equiv p   p \lor  (p \land q) \equiv p$                            |
|   8   | Identidad        |                                     $p \land V \equiv p   p \lor F \equiv p$                                      |
|   9   | Dominacion       |                                     $p \lor V \equiv V   p \land F \equiv F$                                      |
|  10   | Bicondicional    |                      $p \Leftrightarrow q \equiv (p \rArr q) \land (q \rArr p)$                       |
|  11   | Condicional      |                                      $p \rArr q \equiv \neg p \lor q$                                       |
|  12   | Tercero Excluido |                                             $p \lor \neg p \equiv V$                                              |
|  13   | Simplificacion   |                                        $p \land q \rArr p \equiv V$                                         |
|  14   | Adicion          |                                         $p \rArr p \lor q \equiv V$                                         |


#### **Reglas de Inferencia**

|         **Nombre**          |                         **Condiciones**                          |
|:---------------------------:|:----------------------------------------------------------------:|
|     Modus Ponens "M.P."     |               $A \rArr B ; A   \therefore B$               |
|     Modus Tolens "M.T."     |            $A \rArr B ; \neg B   \therefore A$             |
| Silogismo Hipotetico "S.H." | $A \rArr B ; B \rArr C   \therefore A \rArr C$ |
| Silogismo Disyuntivo "S.D." |                $A \lor B ; \neg A   \therefore B$                |
|  Ley de Combinacion "L.C."  |                  $A ; B   \therefore A \land B$                  |

#### **Reglas de Inferecia Razonamientos Categoricos (CON CUANTIFICADORES):**


|              **Nombre**              |                                **Condiciones**                                |
|:------------------------------------:|:-----------------------------------------------------------------------------:|
|  Part. Uni. "P.U."  |                       $\forall x: p(x) \therefore p(a)$                       |
|   Gen. Uni "G.U."    | $p(a) \therefore \forall x: p(x) \text{(Solo se cumple si ``a" es generico)}$ |
| Part. Exist. "P.E." |                       $\exists x: p(x) \therefore p(a)$                       |
|  Gen. Exist. "G.E."   |                       $p(a) \therefore \exists x: p(x)$                       |
