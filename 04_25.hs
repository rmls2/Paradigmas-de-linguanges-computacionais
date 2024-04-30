-- funções 

-- definindo funções dentro de outra

fat:: Int -> Int
fat n 
 | n==0 = 1
 | n > 0 = fat(n-1) * n
