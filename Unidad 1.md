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

### Extensión: fórmulas

Cuando aparecen **fórmulas** (expresiones con relaciones como `=`, `<`, `>`), la simplificación implica reducir **cada lado**.

Ejemplo: 
$$2+3 = 5 \quad \equiv \quad 5=5 \quad \equiv \quad True$$

Aquí aparece el símbolo de **equivalencia lógica (≡)**, que compara **valores de verdad** en lugar de valores numéricos.

Además se introducen **True** y **False** como nuevas constantes.

## 3. El problema del tipado

Hasta aquí:

- Tenemos **expresiones numéricas** → siempre dan un número como forma canónica.

- Tenemos **fórmulas con relaciones** → siempre dan un valor booleano (`True` o `False`).

Pero cuando introdujimos `True` y `False` como **constantes booleanas**, aparecen **expresiones sin sentido**.  
 Ejemplo:

$$True + 3$$

No representa ni un número ni un valor de verdad → **no tiene forma canónica**.

Esto muestra que no todas las expresiones que son _sintácticamente correctas_ tienen _semántica válida_.

### Solución: los tipos

Para distinguir qué expresiones tienen sentido, se introducen los **tipos**.

- `Nat` $→$ conjunto de todos los números naturales.

- `Bool` $→$ conjunto formado por `True` y `False`.


**Definición**:  
Cada expresión debe estar asociada a un **tipo**. El tipo nos dice en qué “conjunto” vive el valor que la expresión representa.

Ejemplo:

1. `4 + 3` → `Nat`.

2. `True + 3` → **mal tipada** (no tiene tipo).

3. `x + 3` → depende del tipo de `x`; si `x : Nat`, entonces la expresión tiene tipo `Nat`.


### Árboles de tipado

Para justificar el tipo de una expresión se construye un **árbol de tipado**, donde:

- Las hojas son constantes o variables con su tipo.

- Los nodos son operadores que combinan tipos según reglas.


Ejemplo (del texto):

$$2−4∗52 - 4 * 5$$

Árbol:

```
       (-)
     /     \
   2       (*)
          /   \
         4     5
```

Cada operación está justificada por una “regla de tipado”, por ejemplo:

- Si `a : Nat` y `b : Nat`, entonces `a+b : Nat`.

- Si `a : Nat` y `b : Nat`, entonces `a = b : Bool`.


### Importancia del tipado

- Evita perder tiempo intentando simplificar expresiones sin sentido.

- Permite **predecir errores antes de calcular** (clave en programación).

- Garantiza que el programa o fórmula esté **bien definida**.


 De hecho, los lenguajes de programación modernos (Haskell, Java, Python, etc.) incorporan sistemas de tipos justamente para evitar errores de este estilo.



## 4. Validez y Satisfactibilidad


Hasta ahora vimos:

- **Expresiones con números** → se simplifican a un número.

- **Fórmulas con relaciones** → se simplifican a un valor de verdad (`True` o `False`).


Pero cuando aparecen **variables**, las fórmulas pueden depender de sus valores.  
Ejemplo:

$$x+x=2x$$

¿Es siempre verdadera? ¿Solo para algunos valores de $x$? ¿Nunca?

Aquí entran los conceptos de **validez** y **satisfactibilidad**.


### Validez

>**Definición**:  
>Una fórmula es **válida** si es **verdadera para todos los valores de sus variables**.

Ejemplo:
$$(x-1)(x+1) = x^2 - 1$$
  Es válida: da `True` para cualquier $x$.


Una fórmula *no válida* es aquella que **falla al menos en un caso**.

Ejemplo:
$$x = x+1$$
Nunca es verdadera $→$ **no válida**.


---

### Satisfactibilidad

>**Definición**:  
>Una fórmula es **satisfactible** si existe **al menos un valor de las variables** que la hace verdadera.

Ejemplo:
$$3x - 16 = x$$

se simplifica a $2x = 16$, o sea $x=8$.  $→$ Es satisfactible, porque tiene solución.

Una fórmula es **no satisfactible** si **no existe ningún valor** que la haga verdadera.

Ejemplo:

$$x = x+1$$
No tiene solución $→$ no satisfactible.


### Relación entre validez y satisfactibilidad


![[Pasted image 20250825200551.png]]


* Si una fórmula es **válida**, entonces también es **satisfactible** (porque es verdadera para todos los valores, en particular para alguno).

- Si es **no satisfactible**, necesariamente es **no válida**.


👉 Diagrama de inclusión (esquema mental):

```
Válidas ⊂ Satisfactibles
No válidas → pueden ser satisfactibles o no
```


### Ejemplos importantes

1. **Válida**: $$a^2 - b^2 = (a+b)(a-b)$$(siempre cierta).

2. **Satisfactible pero no válida**:
$$x^2 + 2x - 3 = 0$$

   (cierta solo para algunos valores de $x$).

3. **No satisfactible (y no válida)**:
$$x = x+1$$
   (nunca cierta).


### Importancia

- En matemáticas:  
    → Los **teoremas** son fórmulas válidas.  
    → Las **ecuaciones** que resolvemos suelen ser satisfactibles (no necesariamente válidas).
    
- En programación y lógica:  
    → Comprobar que una condición es válida asegura que un programa siempre cumple cierta propiedad.


### **En resumen**:

- **Validez** → verdad universal.

- **Satisfactibilidad** → verdad “a veces”.

- **No validez** → falla en al menos un caso.

- **No satisfactibilidad** → no hay ningún caso en que funcione.

