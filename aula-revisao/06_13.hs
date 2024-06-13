-- q2
sublistam:: [a] ->[[a]]
sublistam []   = [[]]
sublistam (x:xs)   = [ x:ys | ys <- sublistam xs] ++ sublistam xs



--q3 a 

poli :: Int -> Int -> Int -> (Int->Int)
poli a b c = (\x->a*x*x + b*x + c)

--q3 b

listaPoli :: [(Int, Int, Int)] -> [Int->Int]
listaPoli l  = [poli a b c | (a,b,c) <-l]

--q3 c 

appListaPoli :: [Int-> Int] -> [Int] -> [Int]
