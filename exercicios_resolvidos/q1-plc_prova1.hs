functa:: [Int] -> [Int]
functa [x] = []
functa (x:y:ys) = if x == y then x: functa(y:ys) else functa(y:ys)

{-

 queremos: 
l =  [1,2,3,3,4]

f (1:2:[3,3,4]) = f(2:[3,3,4])
f(2:[3,3,4]) = f([3:[3,4]])
f([3:[3,4]]) = 3:f(3,4) = 3:(f(3:[])) = 3:[] = [3]

lista dos repetidos = [ x | x <- (x:y:ys), x==y] 

-}

functaComprehension :: [Int] -> [Int]
functaComprehension [] = []
functaComprehension xs = [xs !! i | i <- [0..length xs - 2], xs !! i == xs !! (i + 1)]



