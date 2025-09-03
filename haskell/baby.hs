-- Cómo se define una función
doubleMe x = x + x

-- Funciones que usan funciones
doubleUs x y = doubleMe x + doubleMe y

-- Uso del if
doubleSmallNumber x = if x > 100 then x else x*2
