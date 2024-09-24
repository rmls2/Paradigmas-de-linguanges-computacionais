-- -- Função mkdir que cria um diretório vazio, caso ele não exista na lista
-- mkdir :: [File] -> Name -> [File]
-- mkdir files name
--     | any (\f -> getName f == name) files = files  -- Verifica se já existe arquivo/diretório com o nome
--     | otherwise = Directory name [] : files        -- Se não existir, cria um novo diretório vazio

-- -- Função auxiliar para obter o nome de um arquivo ou diretório
-- getName :: File -> Name
-- getName (SimpleFile name _) = name
-- getName (Directory name _)  = name


-- -- c)

-- Função cd que retorna o diretório desejado, se ele existir

type Name = String     
type Content = String  

data File = SimpleFile Name Content   
          | Directory Name [File]      
          deriving (Show, Eq)


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
    -- Mudar para o diretório "etc"
    let result1 = cd exemplo "etc"
    print result1  -- Just "etc"
    
    -- Tentar mudar para um diretório inexistente "bin"
    let result2 = cd exemplo "bin"
    print result2  -- Nothing