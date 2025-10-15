--- Ejercicio 5

sumar :: [Int] -> Int
sumar [] = 0
sumar (x:xs) = x + sumar xs

prod :: [Int] -> Int
prod [] = 1
prod (x:xs) = x * (prod xs)

card :: [Int] -> Int
card [] = 0
card (x:xs) = 1 + card xs

todosMenores10 :: [Int] -> Bool
todosMenores10 [] = True
todosMenores10 (x:xs) = (x<10) && (todosMenores10 xs)

hay0 :: [Int] -> Bool
hay0 [] = False
hay0 (x:xs) = (x==0) || (hay0 xs)


-- Ejercicio 6

sumar1 :: [Int] -> [Int]
sumar1 [] = []
sumar1 (x:xs) = (x+1):(sumar1 xs)

duplica :: [Int] -> [Int]
duplica [] = []
duplica (x:xs) = (2*x):(duplica xs)

multiplica :: Int -> [Int] -> [Int]
multiplica n [] = []
multiplica n (x:xs) = (n*x):(multiplica n xs)


-- Ejercicio 7

soloPares :: [Int] -> [Int]
soloPares [] = []
soloPares (x:xs) | (x`mod`2 == 0) = x:(soloPares xs)
                  | otherwise = soloPares xs

mayoresQue10 :: [Int] -> [Int]
mayoresQue10 [] = []
mayoresQue10 (x:xs) | x>10 = x:(mayoresQue10 xs)
                    | otherwise = mayoresQue10 xs

-- Ejercicio 8

pegarDer :: [a] -> a -> [a]
pegarDer [] y = [y]
pegarDer (x:xs) y = x:(pegarDer xs y)

indice :: [a] -> Int -> a
indice (x:xs) 0 = x
indice (x:xs) n = indice xs (n-1)

take1 :: Int -> [a] -> [a]
take1 n [] = []
take1 0 xs = []
take1 n (x:xs) = x:(take1 (n-1) xs)

drop1 :: Int -> [a] -> [a]
drop1 n [] = []
drop1 0 (x:xs) = (x:xs)
drop1 n (x:xs) = drop1 (n-1) xs

concat1 :: [a] -> [a] -> [a]
concat1 [] ys = ys
concat1 (x:xs) ys = x:(concat1 xs ys)
