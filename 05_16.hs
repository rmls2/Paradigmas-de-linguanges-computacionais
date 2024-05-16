-- map 
-- filter 
-- fold 

-- note que estamos destacando as funções com ( )
somaLista :: [Int] -> Int
somaLista []     = 0
somaLista (x:xs) = (+) x  (somaLista xs)


produtoLista :: [Int] -> Int
produtoLista []     = 1
produtoLista (x:xs) = (*) x (produtoLista xs)

andLista :: [Bool] -> Bool
andLista    []  = True
andLista (x:xs) = (&&) x (andLista xs)

--o compilador inferirá o tipo no caso abaixo
fld f v []     = v 
fld f v (x:xs) = f x  (fld f v xs)

mfoldr :: (t-> t-> t) -> t -> [t] -> t
mfoldr f v []     = v 
mfoldr f v (x:xs) = f x  (mfoldr f v xs)

{-
avaliar mfoldr (+) 0 [1,2,3]
-}

somaLista2 l = mfoldr (+) 0 l

mfoldr1 :: (t->t->t) -> [t] -> t 
mfoldr1 f [v]    = v
mfoldr1 f (x:xs) = f x (mfoldr1 f xs) 

{-
mfoldr1 (+) [1,2,3]
= (+) 1 (mfoldr1 (+) [2,3])
= (+) 1 ( (+) 2 (mfoldr1 (+) [3]))
= (+) 1 ((+) 2 3)
= (+) 1 (5)
= 6
-}


mfoldl :: (b ->a -> b) -> b -> [a] -> b 
mfoldl f v []     =  v
mfoldl f v (x:xs) =  mfoldl f (f v x) xs 

{-
mfoldl (+) 0 [1,2,3]
= mfoldl (+) ((+) 0 1) [2,3]
=  mfoldl (+) 1 [2,3]
=  mfoldl (+) ((+) 1 2) [3]
=  mfoldl (+)  3 [3]
=  mfoldl (+) ((+) 3 3) []
=   mfoldl (+) 6 []
= 6

-}


mOr l = mfoldl (||) False l 


paraUm :: t -> Int
paraUm v = 1 

comprimentoLista l = mfoldl (+) 0 (map paraUm l)

-- composiçao de funcoes

inc :: Int -> Int
inc x = x +1

aplicaDuasVezes :: (Int -> Int) -> Int -> Int
aplicaDuasVezes f x = f (f x)

aplicaDuasVezes2 :: (Int -> Int) -> Int -> Int
aplicaDuasVezes2 f x = (f.f) x


iter :: Int -> (t->t) -> (t -> t)
iter 0 f    = id 
iter n f    = (iter (n-1) f ) . f 

{-
iter 3 not 
= (iter 2 not). not
= ((iter 1 not). not.not)
= ((iter 0 not). not.not.not
= id. not.not.not
-}

