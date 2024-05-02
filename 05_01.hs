-- sinonimos de tipos
-- palavra reservada: type

type Nome = String
type Idade = Int
type Pessoa = (Nome, Idade)

nome :: Pessoa -> Nome
-- nome (n, i) = n 
nome p = fst p

-- compreensão de conjuntos: {x > 10 | x e N}
-- compreesão de listas: [exp | gerador]
-- exemplo: [x | x <- lista][] 

{-
[[x..10 + x] | x <- [1..4]]
[[1,2,3,4,5,6,7,8,9,10,11],[2,3,4,5,6,7,8,9,10,11,12],[3,4,5,6,7,8,9,10,11,12,13],[4,5,6,7,8,9,10,11,12,13,14]]


-- filtro: [exp | gerador, filtro]
[x | x <- [1..10], x > 3, x<8]  
[4,5,6,7]

[x | x <- [1..10], (x > 3 || x > 8)]  
[4,5,6,7,8,9,10]



-- compreensão com mais de um gerador: [exp | gerador, gerador, filtro]
[(x,y,z) | x <- [1..5], y <- [1..5], z <- [1..5], x^2 == y^2 + z^2]
[(5,3,4),(5,4,3)]

-}