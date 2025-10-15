--- Ejercicio 1
f :: Int -> Int
f x = 5*x

duplica :: Int -> Int
duplica a = a+a

multiplicar :: Int -> Int -> Int
multiplicar x y = x*y

por2 :: Int -> Int
por2 y = 2*y

--- Ejercicio 2
prom2 :: Double -> Double -> Double
prom2 x y = (x+y) / 2.0

--- Ejercicio 7

entre0y9 :: Int -> Bool
entre0y9 x = (x>=0 && x<10)

rangoPrecio :: Int -> String
rangoPrecio x | x < 0 = "esto no puede ser!"
              | x >= 0 && x < 2000  = "muy barato"
              | x >= 2000 && x < 5000 = "hay que verlo bien"
              | x >= 5000 = "demasiado caro"

absoluto :: Int -> Int
absoluto n | n>=0 = n
           | n < 0 = (-1)*n

esMultiplo2 :: Int -> Bool
esMultiplo2 n = (n `mod` 2 == 0)

-- Ejercicio 8
esMultiploDe :: Int -> Int -> Bool
esMultiploDe x y = (y `mod` x == 0)

-- Ejercicio 9
esBisiesto :: Int -> Bool
esBisiesto x = (x `mod` 400 == 0) || (x `mod` 4 ==0 && x `mod` 100 /= 0)

-- Ejercicio 10

max3 :: Double -> Double -> Double ->Double
max3 x y z = z `max` (x `max` y)

min3 :: Double -> Double -> Double -> Double
min3 x y z = z `min` (x `min` y)

dispersion :: Double -> Double -> Double -> Double
dispersion x y z = max3 x y z - min3 x y z


-- Ejercicio 14
segundo3 :: (Int, Int, Int) -> Int
segundo3 (a,b,c) = b
