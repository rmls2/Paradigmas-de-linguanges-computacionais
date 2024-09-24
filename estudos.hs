-- maiorInteiro :: Int -> Int -> Int 
-- maiorInteiro x y
--  | x >= y = x
--  |otherwise = y
-- --  | not(x >= y) = y  

-- condicao :: Int -> Int -> Bool
-- condicao x y = x > y

-- condicao2 :: Int -> Int -> Bool
-- condicao2 x y 
--   | x > y = True
--   |otherwise = False

--usando a cláusula where

-- somaQuadrados :: Int -> Int -> Int 
-- somaQuadrados x y = quad x + quad y 
--         where
--             -- quad :: Int -> Int
--             quad s = s*s


-- usando let in 
-- somaQuadrados :: Int -> Int -> Int 
-- somaQuadrados x y = let quadx = x*x; quady = y*y in quadx + quady

-- maxsq :: Int -> Int -> Int
-- maxsq x y
--     | sqx > sqy = sqx
--     | otherwise = sqy
--     whereehPar , ehImpar :: Int −> Bool
-- ehImpar n
-- 	| n<=0 = False
-- 	| otherwise = ehPar (n−1)

-- ehPar n
-- 	| n < 0 = False
-- 	| n == 0 = True
-- 	| otherwise = ehImpar (n−1)
--         sqx = sq x
--         sqy = sq y
--         sq :: Int -> Int
--         sq z = z * z --Escopo de z é só aqui na linha 8

--RECURSÃO

--Por guardas
fat :: Integer -> Integer
fat n
  | n == 0 = 1
  | n > 0 = fat (n-1) * n -- (n-1) é a variante

--Por casamento de padrão
fat1 :: Integer -> Integer
fat1 0 = 1
fat1 n = fat (n-1) * n -- (n-1) é a variante


fib :: Integer -> Integer
fib n
   | n == 0 = 0
   | n == 1 = 1
   | n > 1 = fib (n-2) + fib (n-1)


-- ehPar , ehImpar :: Int -> Bool
-- ehImpar n
--   | n <= 0 = False
--   | otherwise = ehPar (n-1)

-- ehPar n
--   | n < 0 = False
--   | n == 0 = True
--   | otherwise = ehImpar (n-1)

tailfat :: Integer -> Integer -> Integer
tailfat 0 x = x
tailfat n x = tailfat (n-1) (n * x)

{-
tailFat 3 1
= tailFat (3-1) (3 * 1)
= tailFat 2 3
= tailFat (2-1) (2*3)
= tailfat 1 6
= tailFat (1-1) (6*1)
= tailfat 0 6 
= 6
-}

-- Como já tinhamos escrito...
fib1 :: Integer -> Integer
fib1 n
  | n == 0 = 0
  | n == 1 = 1
  | n > 1 = fib1 (n-2) + fib1 (n-1)


fibStep :: (Integer, Integer) -> (Integer, Integer)
fibStep (u , v) = (v , u + v)
-- (0,1) -> (1,1)

fibPair :: Integer -> (Integer, Integer)
fibPair n
  | n == 0    = (0,1)
  |otherwise = fibStep (fibPair (n-1))
{-

fibPair 2 -> fibStep (fibPair(1))
fibPair 1 -> fibStep (fibStep (fibPair(0))
fibPair 0 -> fibStep (fibStep ((0,1)))
fibPair 0 -> fibStep ((1,1))
fibPair 0 -> (1,2)
-}

{-

fibpair 1 = fibStep(fibpair 0) = fibStep(0,1) = (1,1)
fibPair 2 = fibStep(fibpair 1) = fibStep(1,1) = (1,2)
fibPair3 = fibStep(fibpair 2) = fibStep(1,2) = (2, 3)
fibPair 4 = fibStep(fibPair 3) = fibStep (2,3) = (3,5)
fibPair 5 = fibStep(fibPair 4) = fibStep (3,5) = (5,8)

 -}

fastFib :: Integer -> Integer
fastFib n = fst (fibPair n)

oneRoot:: Float -> Float -> Float -> Float
oneRoot a b c = -(b / ( 2*a))

twoRoot:: Float -> Float -> Float -> (Float, Float)
twoRoot a b c = (d-e, d+e)
  where
    d = -(b / ( 2*a))
    e = sqrt(b**2 - 4*a*c)/2*a


comprimentoListaInt :: [Int] -> Int
comprimentoListaInt [] = 0 --casamento de padrão
comprimentoListaInt (x : xs) = 1 + comprimentoListaInt xs--head x e tail xs

compLista :: [a] -> Int
compLista [] = 0
compLista (x:xs) = compLista xs

segundoElem :: [t] -> t
segundoElem (x:y:_) = y

mhead :: [t] -> t
mhead []       = error "Lista vazia."
--mhead (x:xs) = x
mhead (x:_)    = x

iSort :: [Int] -> [Int]
iSort []     = []
iSort (x:xs) = ins x (iSort xs) --vamos definir ins

ins :: Int -> [Int] -> [Int]
ins x []     = [x]
ins x (y:ys) 
  | x <= y    = x : (y:ys)
  | otherwise = y : ins x ys


--Lembras de vendas?
vendas :: Int -> Int
vendas 0 = 12
vendas 1 = 21
vendas 2 = 3
vendas 3 = 9
vendas 4 = 6

totalVendas :: Int -> Int
totalVendas 0 = 0
totalVendas n = vendas n + totalVendas (n-1)

total :: (Int -> Int) -> (Int -> Int) --recebe uma função f de inteiros para inteiros e retorna uma função
total f 0 = 0
total f n = f n + total f (n-1)