-- 21/05/24

{- composição de funcoes pode ser escrito como:

f(g x) ou (f g) c ou ainda:

:t $ >> (a->b) -> a -> b 
dobro $ 3 
6
($) dobro 3
6

$ então é utilizado para ser livrar dos parenteses, mas não é muito utilizado
-}

dobro:: Int -> Int
dobro x = 2*x

mzipwith :: (a -> b -> c) -> [a] -> [b] -> [c]
mzipwith f (x:xs) (y:ys) = f x y : mzipwith f xs ys
mzipwith f  _       _    = []

-- Função lambda
{-
 (\ x -> x+1) 2 >> 3 
 (\ x y -> x+1+y) 2 4 >> 7 

-}

addNum :: Int -> (Int->Int)
addNum n = h
  where
    h x = n + x

addNumLambda :: Int -> (Int -> Int)
addNumLambda n = (\x -> n + x)

-- aplicação parcial de uma função em haskell
somaTresInt :: Int -> Int -> Int -> Int
somaTresInt x y z = x + y + z
 

 {-
 
 (+2) 3 >> (+) 2 3 >> 2 + 3 >> 5
 
 -}