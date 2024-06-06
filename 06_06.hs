--Classes 

tresValoresIguais :: Int -> Int -> Int -> Bool
tresValoresIguais m n p = (m == n) && (n == p)

tresValoresIguaisGen :: (Eq t) => t -> t -> t -> Bool
tresValoresIguaisGen m n p = (m == n) && (n == p)
