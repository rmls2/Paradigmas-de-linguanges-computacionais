ehDigito:: Char -> Bool
ehDigito ch = (ch >= '0') && (ch <= '9')


todosIguais :: Int -> Int -> Int -> Bool
todosIguais x y z = (x==y) && (y==z)

-- casamento de padrão 

exOr:: Bool -> Bool -> Bool
exOr True x = not True
exOr False x = x 

--guarda (expressao booleana)

{-
idFuncao :: Tipo
idFuncao params
| guarda 1 = exp_1 
| guarda 2 = exp_2
.
.
.
| guarda n-1 = exp_n-1
| not (g_1) && not (g_2) && ... && not (g_n-1)= exp_n

-}

maiorInteiro :: Int -> Int -> Int
maiorInteiro x y
  | x >= y     = x 
  |not(x >= y) = y

maiorInteiro2 :: Int -> Int -> Int
maiorInteiro2 x y
  | x >= y    = x
  | otherwise = y