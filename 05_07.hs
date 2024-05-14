addPair :: [(Int, Int)] -> [Int]
addPair l = [ x + y | (x, y) <-l]


todosPares :: [Int] -> Bool
todosPares l = l == [x | x <- l, mod x 2 == 0]


--06_listas, construtor e polimorfismo.

CLint:: [Int] -> Bool  --comprimento da lista de booleanos
CLint (x: xs) = 1 + CLint xs

