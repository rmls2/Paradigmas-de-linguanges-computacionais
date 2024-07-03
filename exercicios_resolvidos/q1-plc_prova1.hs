--Q1
functa:: [Int] -> [Int]
functa [x] = []
functa (x:y:ys) = if x == y then x: functa(y:ys) else functa(y:ys)

{-

 queremos: 
l =  [1,2,3,3,4]

= 1 == 2 f [2,3,3,4]]
= f [2,3,3,4]] = 2 == 3 f [3,3,4]
= f [3,3,4]  = 3 == 3 3:f[3,4] = 3:(f[4]) = 3:[] = [3] -}

functaComprehension :: [Int] -> [Int]
functaComprehension [] = []
functaComprehension xs = [xs !! i | i <- [0..length xs - 2], xs !! i == xs !! (i + 1)]


mfoldr :: (t -> Bool -> Bool) -> Bool -> [t] -> Bool
mfoldr         f           v    [ ]  = v
mfoldr         f           v   (x:xs) = f x (mfoldr f v xs)
 

--Q2

--Recursão
testaElementos :: (a -> Bool) -> [a] -> Bool
testaElementos _ [] = True
testaElementos f (x:xs) = f x && testaElementos f xs

--map e and
testaElementos2 :: (a -> Bool) -> [a] -> Bool
testaElementos2 f xs = and (map f xs)

--foldr
testaElementos3 :: (a -> Bool) -> [a] -> Bool
testaElementos3 f = foldr (\x acc -> f x && acc) True

-- Q3 
sublistas :: [a] -> [[a]]
sublistas []      =  [[]]
sublistas (x:xs)  =  [ x:ys | ys <- sublistas xs ] ++ sublistas xs


