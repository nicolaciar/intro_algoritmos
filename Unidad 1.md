> Introducción al formalismo básico. Concepto de validez y satisfactibilidad.

# Revisando la Aritmética

Repasamos la aritmética básica, pero desde una **mirada formal**, como si estuviéramos construyendo un _sistema lógico-matemático_. La idea es que todo lo que usabas de manera intuitiva en primaria/secundaria ahora lo pienses explícitamente con reglas, sintaxis y semántica.

## 1. Sintaxis y semántica intuitiva

- **Sintaxis**: qué símbolos están permitidos y cómo se combinan correctamente: números (***constantes***), letras (***variables***), ***operadores*** (+, −, ∗, /, ^ ).
 
- **Semántica**: qué representan esos símbolos → números o valores numéricos.

- Aparece la distinción entre ***símbolo*** y  ***valor***: “7”, “5+2” o “8−1” son diferentes expresiones pero representan el mismo valor: 7.

### Relaciones
Con constantes, variables y operadores podíamos construir expresiones aritméticas, pero todavía no podemos **compararlas** ni decir nada sobre propiedades como igualdad o desigualdad.
Por eso se introduce el concepto de ***relación***.

- Cuando combinamos dos **expresiones** mediante un **símbolo relacional**, obtenemos una **fórmula**.
- Una **fórmula** es un tipo especial de expresión, que ya no representa un número, sino un valor **booleano** (`True` o `False`).

Los símbolos relacionales que se agregan son:

- **Igualdad (=)** → `x = y` significa que ambas expresiones representan el mismo valor.
- **Diferencia (≠)** → `x ≠ y` significa que los valores son distintos.
- **Menor (<)** → `x < y` significa que el valor de `x` es estrictamente menor que el de `y`.
- **Menor o igual (≤)** → `x ≤ y` significa que `x` es menor o igual que `y`.
- **Mayor (>)** → `x > y` significa que `x` es estrictamente mayor que `y`.
- **Mayor o igual (≥)** → `x ≥ y` significa que `x` es mayor o igual que `y`.

 Observese que todos estos operadores **relacionan solo dos expresiones**. No se acepta algo como `2+3=5=10`, porque ahí estarías usando el mismo operador con más de dos expresiones a la vez.
 
Lo clave de este apartado es el **cambio de tipo**:

- Las **expresiones aritméticas** representan valores de tipo `Nat` (números).
- Las **fórmulas** construidas con relaciones representan valores de tipo `Bool` (verdadero/falso).    

### Reglas de Precedencia

Cuando tenemos **expresiones complejas**, necesitamos un criterio que diga **en qué orden** deben aplicarse los operadores.

Las **reglas de precedencia** fijan un orden jerárquico de evaluación de operadores.

1. **Raíces y potencias** $(\sqrt{\phantom{x}}, (\cdot)^2)$
2. **Producto y división** $(∗,/)$
3. **Suma y resta** $(+, -)$
4. **Relaciones** $(=,≠,<,≤,>,≥)$

Los paréntesis `()` permiten **alterar** el orden natural de evaluación.


### Variables

Las **variables** son símbolos que no representan un valor fijo, sino un valor cualquiera dentro de un dominio.

Las variables sirven para:

1. **Descubrir valores** (resolver ecuaciones): `(1000−340)/3 = x` para calcular cuánto recibe cada hijo.
2. **Generalizar** propiedades (ejemplo: binomio al cuadrado): Sin variables habría que escribir infinitas fórmulas.

## 2. Simplificación de expresiones

Hasta ahora construimos expresiones con constantes, variables, operadores y relaciones.  
La pregunta ahora es: *¿cómo reducir una expresión a su forma más simple sin alterar su significado?*
Eso se llama **simplificación**.


### Forma canónica

Cuando simplificamos, buscamos llegar a una **forma canónica**, es decir, la versión más “irreducible” de la expresión.

- Si la expresión contiene **solo números**, la forma canónica es un **número**.  
    Ejemplo:
    $3∗2+6 \quad \to \quad 6 + 6 \quad \to \quad 12$
    
- Si contiene **variables**, reducimos todo lo posible, pero sin poder reemplazar las variables.  
    Ejemplo:
    $(x+2)+(3∗4) \quad \to \quad (x+2) + 12$

**Estrategia general**

1. Identificar operadores con **mayor precedencia** (potencias, multiplicaciones, etc.).
2. Reemplazar **subexpresiones** por su forma canónica.
3. Repetir hasta que ya no quede nada por simplificar.

 En expresiones con variables, el proceso se detiene en cuanto no se puede aplicar más aritmética numérica.