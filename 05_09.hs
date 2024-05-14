complistaInt :: [Int] -> Int
complistaInt [] = 0
complistaInt (x:xs) = 1 + complistaInt xs

-- length de uma lista de qualquer tipo 
complista :: [a] -> Int
complista [] = 0
complista (x:xs) = 1 + complista xs

-- head 

mhead :: [t] -> t
mhead [] = error "deu ruim ai"  -- é uma exceção
mhead (x:_) = x  -- poderia ser mhead (x: xs), não precisa dizer quem é a calda por causa da avaliação preguiçosa quem é a calda

-- tail 
mtail :: [t] -> [t]
mtail [] = error "deu erro ai no mtail"
mtail (_:xs) = xs 

--mnull
mNull :: [t] -> Bool
mNull [] = True 
mNull _ = False


segundoElemem :: [t] -> t
segundoElemem (x:y:_) = y

maiorValorLista :: [Int] -> Int
maiorValorLista []  = error "lista vazia"  -- mVL1
maiorValorLista [x] = x                    -- mVL2
maiorValorLista (x: xs)                    -- mVL3
  | x > maiorValorLista xs = x 
  | otherwise              =  maiorValorLista xs 


{- avaliação de maiorValorLista
maiorValorLista



-}


-- drop 


-- take 
mtake :: Int -> [t] -> [t]
mtake 0 _        = []
mtake _ []       = []
mtake n (x:xs)   = x : mtake (n-1) xs


{-
mtake 2 [1,2,3,4]
= 1 : mtake 1 [2,3,4]
= 1 : 2 : mtake 0 [3,4]
= 2: 1: []
= [1,2]


-}

mzip1 :: [a]->[b]->[(a,b)]
mzip1 (x:xs) (y:ys) = (x,y) : mzip1 xs ys
mzip1 [] (y: ys)          = []
mzip1 (x:xs) []          = []


mzip2 :: [a]->[b]->[(a,b)]
mzip2 (x:xs) (y:ys) = (x,y) : mzip2 xs ys
mzip2 [] _          = []
mzip2 _ []          = [] 

mzip3 :: [a]->[b]->[(a,b)]
mzip3  (x:xs) (y:ys) = (x,y) : mzip3 xs ys
mzip3 _ _ = []

iSort ::[Int] -> [Int]
iSort []      = []
iSort (x: xs) = ins x (iSort xs)


ins :: Int -> [Int] -> [Int]
ins x []     = [x]
ins x (y: ys)
  | x <= y    =  x : (y: ys)
  | otherwise = y: ins x ys 

-- avalição de ins 

{-
ins 3 [7,1,2]
= 3 : [7,1,2]
= [3,7,1,2]

ins 8 [7,1,2]
= 7 : ins 8 [1,2]
= 7: 1 ins 8 [2]
= 7: 1: 2: ins 8 []
= 7: 1: 2: [8]
= [7,1,2,8]
-}

-- avaliação de isort

{-


-}