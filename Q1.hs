type Name = String     
type Content = String  

data File = SimpleFile Name Content   
          | Directory Name [File]      
          deriving (Show, Eq)

-- a)

dir :: [File] -> [Name]
dir [] = []
dir (SimpleFile name _ : files) = name : dir files 
dir (Directory name filesInside : files) = name : (dir filesInside ++ dir files) 


-- b)
mkdir :: [File] -> Name -> [File]
mkdir files name
    | any (\f -> getName f == name) files = files  -- verifica se ja existe arquivo/diretório com o nome
    | otherwise = Directory name [] : files        --se não existir cria um novo diretório vazio

-- Função auxiliar para obter o nome de um arquivo ou diretório
getName :: File -> Name
getName (SimpleFile name _) = name
getName (Directory name _)  = name

-- c)

-- Função cd que retorna o diretório desejado, se ele existir
cd :: [File] -> Name -> Maybe Name
cd [] _ = Nothing  -- Caso base: se a lista de arquivos estiver vazia, não há diretório
cd (SimpleFile _ _ : files) name = cd files name  -- Ignora arquivos simples
cd (Directory dirName _ : files) name
    | dirName == name = Just dirName  -- Se encontrar o diretório, retorna Just com o nome
    | otherwise = cd files name       -- Continua a busca no restante da lista



exemplo :: [File]
exemplo = [ SimpleFile ".profile" "xyzxyz"
          , SimpleFile ".isabelle" "bbb"
          , Directory "etc" [ SimpleFile "gdb.conf" "xxx"
                            , SimpleFile "hosts" "sss"
                            ]
          , SimpleFile "hosts.equiv" "rrr"
          ]

main :: IO ()
main = do

-- a)
    putStrLn "printando o diretório o diretório exemplo:\n"
    print $ dir exemplo

-- b)
    -- print (dir exemplo)
    putStrLn " "

    let result1 = mkdir exemplo "newDir"
    print result1

    putStrLn " "

    let result2 = mkdir exemplo "etc"
    print result2

-- c)
    putStrLn "\nDiretório encontrado:  "
    -- Mudar para o diretório "etc"
    let result3 = cd exemplo "etc"
    print result3  -- "diretório encontrado: etc"

    putStrLn "\nDiretório não encontrado:  "
    -- Tentar mudar para um diretório inexistente "bin"
    let result4 = cd exemplo "bin"
    print result4  -- "diretório não encontrado