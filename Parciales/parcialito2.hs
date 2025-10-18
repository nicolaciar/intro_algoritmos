-- Ejercicio 1

resultadoFinal :: (String, Int, Int) -> String
resultadoFinal (x,y,z) | y>z = "Ganamos"
                       | y<z = "Perdimos"
		       | y==z = "Empatamos"

multiplicaNegativos :: [Int] -> Int
multiplicaNegativos [] = 1
multiplicaNegativos (x:xs) | x<0 = x * (multiplicaNegativos xs)
                           | x>=0 = (multiplicaNegativos xs)

