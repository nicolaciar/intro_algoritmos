> Lógica de Predicados


La lógica proposicional, analizada en capítulos anteriores, resulta insuficiente para expresar razonamientos que involucran cuantificadores como "todos" o "algo":

```
Todos los hombres son mortales. Sócrates es un hombre. Por lo tanto, Sócrates es mortal.
```
La lógica proposicional no puede capturar la relación entre estas afirmaciones mediante sus operadores. Por ello, se introduce la **lógica de predicados** como una extensión que incorpora cuantificadores, manteniendo todas las reglas y teoremas de la lógica proposicional. 

## 8.1 Extendiendo el lenguaje


**Predicados como extensión del lenguaje**

> **Predicado**: funciones que toman argumentos (objetos de un universo) y devuelven un valor booleano (Verdadero/Falso).

 Ejemplo:  La afirmación $x < 5$ es un predicado y será verdadero dependiendo el valor que tome el argumento. Formalmente el predicado se podrı́a expresar ası́:

$$
\begin{align*}
&\textbf{menor5}::\text{Num}\to\text{Bool}\\ &\textbf{menor5}.x:=x<5
\end{align*}
$$

 Los predicados siempre se definen en relación a un conjunto, a un *universo.* El **universo** es el conjunto de posibles valores que pueden tomar las variables de los predicados. Los universos estarán dados por los tipos de los argumentos de un predicado dado.

**Necesidad de cuantificadores**

Para formalizar frases como `"Todos los hombres son mortales"` con predicados necesitaríamos listar todos los casos:

$$
\text{mortal}.h1 ∧ \text{mortal}.h2 ∧ \text{mortal}.h3 ∧ …
$$
esto es impráctico (y directamente imposible en universos infinitos). Por eso se introducen los **cuantificadores**:

- **Universal $(∀)$**: "para todo $x$, $\text{P}(x)$"

- **Existencial $(∃)$**: "existe al menos un $x$ tal que $\text{P}(x)$"


**Notación propuesta**

Para mayor claridad usan paréntesis angulares `〈 〉` para delimitar el alcance de la cuantificación.

- $〈∀x :: \text{Par}.x〉$   ("Todo $x$ es par")
- $〈∃x, y :: 2 * x = y〉$   ("Existen $x$ e $y$ tales que $2x = y$")

Se distingue entre **variables ligadas** (las que están dentro del cuantificador) y **variables libres** (las que no están cuantificadas).


**Importancia del universo**

El valor de verdad de una proposición cuantificada depende del universo considerado.

Ejemplo:

 "Para todo $x$ existe un y tal que $x = 2y$" es **verdadera** si el universo son los enteros pares, pero **falsa** si el universo son los naturales en general.

---

## 8.2