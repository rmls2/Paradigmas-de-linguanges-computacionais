tailFat :: Integer -> Integer -> Integer
tailFat 0 x =  x 
tailFat n x =  tailFat (n-1 ) (n*x)


-- Tuplas 

maxIntpar ::(Int, Int) -> Int
maxIntpar (m,n)
 | m >= n    = m
 | otherwise = n

minMaxPar :: Int -> Int -> (Int, Int)
minMaxPar x y 
 | x <= y    = (x,y)
 | otherwise = (y,x)


 addPair :: (Int, Int) -> Int
 addPair (0, n) = n
 addPair (m, n) = m+n

maxIntpar ::(Int, Int) -> Int
maxIntpar 
 |fst p >= snd p = fst p
 |otherwise = snd p

 -- outra forma de fazer fibonacci com tupla dessa vez

fibStep :: (Integer, Integer) -> (Integer, Integer)
fibStep (u, v) = (v, u+v)

fibPair :: (Integer, Integer) -> (Integer, Integer)
fibPair n
 | n == 0    = (0, 1)
 | otherwise = fibStep(fibPair(n-1))

fastFib :: Integer -> Integer
fastFib n = fst (fibPair(n-1))
 