-- q exponencial 



-- q mdc 

-- main = do
--    a <- readLn
--    b <- readLn
--    print (mdc (a :: Int) (b :: Int))
  
-- mdc :: Int -> Int -> Int
-- mdc a 0 = a 
-- mdc a b = mdc b (mod a m )

-- q4
maxTres :: Integer -> Integer -> Integer -> Integer
maxTres x y z
    | x >= y && x >= z  = x
    | y >= z            = y
    | otherwise         = z

maxFor :: Integer -> Integer -> Integer -> Integer -> Integer
maxFor m n p q
    | m >= n && m >= p && m >= q = m
    | n >= p && n>=q             = n
    | p >= q                     = p
    | otherwise                  = q

maxFor' :: Integer -> Integer -> Integer -> Integer -> Integer
maxFor' m n p q
 | m >= (max n p)  && m >= (max p q )  = m 
 | n >= (max m p)  && n >= (max m q)   = n
 | p >= (max m n)  && p >= (max n q)   = p
 | otherwise                           = q

maxFor'' :: Integer -> Integer -> Integer -> Integer -> Integer
maxFor'' m n p q = max m (maxTres n p q)


-- q Quantas divisões exatas

numDiv:: Integral a => a -> a -> a
numDiv a b 
 | a < b        = 0
 | mod a b == 0 = 1 + numDiv (div a b) b 
 | otherwise    = 0



-- q Lista de Primos em uma faixa





-- q final 
main = do
  x <- getLine
  y <- getLine
  print $ merge (map (read :: String -> Int) (words x)) (map (read :: String -> Int) (words y))


bubbleSort :: Ord a => [a] -> [a]
bubbleSort [] = []  -- Lista vazia já está ordenada
bubbleSort lista = bubbleSort' lista (length lista)

bubbleSort' :: Ord a => [a] -> Int -> [a]
bubbleSort' lista 0 = lista  -- Nenhuma troca necessária
bubbleSort' lista n = bubbleSort' (trocar lista) (n - 1)
  where
    trocar [x] = [x]
    trocar (x:y:zs)
      | x > y     = y : trocar (x:zs)
      | otherwise = x : trocar (y:zs)
     
merge :: Ord a => [a] -> [a] -> [a]
merge (x:xs) [] = (x:xs)
merge [] (y:ys) = (y:ys)
merge l m = bubbleSort(l ++ m)