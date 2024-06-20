reverse2linas :: IO()
reverse2linas =
    do
        l1 <- getLine
        l2 <- getLine
        let l1r = reverse l1
        let l2r = reverse l2
        putStrLn l2r
        putStrLn l1r
        putStrLn l1
        putStrLn l2

-- main :: IO()
-- main = do 
--         return ()
--         l1 <- return "asdf"
--         lEntrada <- getLine
--         return "chubaca"
--         return 4
--         putStrLn l1
--         putStrLn lEntrada

-- main:: IO()
-- main = entradaRec


-- entradaRec :: IO()
-- entradaRec = do 
--         linha <- getLine
--         if null line
--         then do return ()
--         else do
--              putStrLn $ reverseWords linha   -- $ serve como parenteses ja que a função em haskell é associativo a esquerda: f a b = (fa)b
--              entradaRec  

-- reverseWords :: String -> String 
-- reverseWords = unwords map reverse . words 

f :: IO String
f = do return "oi"

showStackHead []     = return []
showStackHead (x:xs) = do 
    putStrLn $ "resultado: " ++ [x]
    return xs 

usaStackHead :: IO()
usaStackHead = do 
    let s1 = []
    r1 <- showStackHead s1
    putStrLn $ "devolveu" ++ r1 
    putStrLn "-----"
    let s2 = "asdfaf"
    r2 <- showStackHead s2
    putStrLn $ "devolveu" ++ r2 
    putStrLn "-----"
    let s3 = "q"
    r3 <- showStackHead s3
    putStrLn $ "devolveu" ++ r3 

funcaoSemFluxoDado :: IO()
funcaoSemFluxoDado =
    putStrLn "asdfa" 
    >> 
    putStrLn "erty"

funcaoComFluxoDado :: IO()
funcaoComFluxoDado =
    putStrLn "informe o valor" 
    >> 
    getLine
    >>=
    (\str -> putStrLn str)

