-- tresIguais :: Int -> Int -> Int -> Bool
tresIguais :: Int -> (Int -> Int -> Bool)  -- dá no mesmo a definição de cima ou de baixo 
tresIguais x y z = (x==y) && (y==z)

tig1 = tresIguais 2
tig2 = tig1 3
tig3    = tig2 4

maxi :: Int -> Int -> Int
maxi m n 
 |m >= n    = m
 |otherwise = n

cabecaLista :: [a] -> a 
cabecaLista []    = error "lista vazia"
cabecaLista (x:_) = x 

caseOf1 :: String 
caseOf1 = case 2 > 3 of 
            True -> "Verdadeiro"
            False -> "Falso"

mhead :: Show a => [a] -> String 
mhead l = case null l of
            True -> "Lista Vazia"
            False -> "O valor da cabeça da lista " ++ show (head l) 

caseOf2 :: Int-> Int -> String 
caseOf2 m n = case m >= n of 
            True -> "o primeiro argumento " ++ show m ++ "é maior que o segundo"
            False -> "o Segundo argumento" ++ show n ++ "é maior que o primeiro"
