rev :: [a] -> [a]
rev []     = []
rev (x:xs) = rev xs  ++ [x] 

vendas :: Int -> Int
vendas 0 = 12
vendas 1 = 2
vendas 2 = 30
vendas 3 = 9
vendas 4 = 6 

-- primeira função de alta ordem

total:: (Int-> Int)-> Int ->Int
total f 0 = f 0  
total f n = f n + total f (n-1) 

quad :: Int -> Int
quad x = x*x

ehpar :: Int -> Bool
ehpar x = mod x 2 == 0

dobro :: Int -> Int
dobro x = 2 * x


ehParLista :: [Int] -> [Bool]
ehParLista []     = []
ehParLista (x:xs) = ehpar x : ehParLista xs

dobrolista :: [Int] -> [Int]
dobrolista []     = []
dobrolista (x:xs) = dobro x : dobrolista xs

map1 :: (Int -> t) -> [Int] -> [t]
map1 f []     = []
map1 f (x:xs) = f x : map1 f xs 

mapBib :: (a -> b) -> [a] -> [b]
mapBib f []     = []
mapBib f (x:xs) = f x : mapBib f xs 

-- map com compreensão de lista
mapCL :: (a -> b) -> [a] -> [b]
mapCL f l = [ f x | x <- l ]


somaPar :: (Int, Int) -> Int 
somaPar (x, y) = x+y

oSegundoEhMaior :: (Int, Int) -> Bool
oSegundoEhMaior (x,y) = y > x


-- filtros 
maiorque3 :: Int -> Bool
maiorque3 x = x > 3

filtraPares :: [Int] -> [Int]
filtraPares []     =  []
filtraPares (x:xs)
 |ehpar x   = x: filtraPares xs
 |otherwise = filtraPares xs 


filtra3 :: [Int] -> [Int]
filtra3 []   = []
filtra3 (x: xs)
 |maiorque3 x  = x : filtra3 xs
 |otherwise    = filtra3 xs


filtro :: (t -> Bool) -> [t] -> [t]
filtro f [] = []
filtro f (x:xs)
 |f x       =  x: filtro f xs
 |otherwise = filtro f xs 

filtroCL :: (t -> Bool) -> [t] -> [t]
filtroCL f l = [x | x <- l, f x]

 -- na bibliotece, filter 