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

