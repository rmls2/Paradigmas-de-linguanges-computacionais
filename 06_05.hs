-- tipoas algebricos (data)

data DiasSemana = Dom | Seg | Ter | Qua | Qui | Sex | Sab 
                deriving (Show, Eq, Ord, Enum)

showDiasSemana :: DiasSemana -> String
showDiasSemana Dom = "Domingo"
showDiasSemana _   = "Não é Domingo"


data SensacaoTermica = Quente | Frio 
                        deriving (Show, Eq, Ord, Enum)


data Estacao  = Verao | Outono | Inverno | Primavera 
                 deriving (Show, Eq, Ord, Enum)

estacaoSensacao :: Estacao -> SensacaoTermica
estacaoSensacao Inverno  = Frio 
estacaoSensacao _        = Quente 


-- Sinonimos de tipos vs tipos algébricos 


type Nome = String
type Idade = Int 
type PessoaSinonimo = (Nome, Idade)

exibirPessoaSinonimo ::  PessoaSinonimo -> String
exibirPessoaSinonimo (n,i) = n ++ " tem " ++ show i ++ " anos de idade"

data PessoaTipoAlgebrico = Pessoa Nome Idade
                            deriving(Show, Eq)

exibirPessoaTipoAlg :: PessoaTipoAlgebrico -> String
exibirPessoaTipoAlg (Pessoa n i) = n ++ " tem " ++ show i ++ " anos de idade"

-- exibirPessoaTipoAlg2 :: PessoaTipoAlgebrico -> String
-- exibirPessoaTipoAlg2 p = n ++ " tem " ++ show i ++ " anos de idade"

data Figura = Circulo Float | Retangulo Float Float 
              deriving (Show, Eq)

areaFigura :: Figura -> Float
areaFigura (Circulo r)       = pi*r*r 
areaFigura (Retangulo l1 l2) = l1 * l2 

ehCircular :: Figura -> Bool
ehCircular (Circulo _)   = True
ehCircular  _            = False

data Ponto   = Ponto Float Float
                deriving (Show, Eq)

data FiguraPlano  = Circulo2 Ponto  Float
                    | Retangulo2 Ponto Float Float
                      deriving (Show, Eq)

areaFiguraPlano :: FiguraPlano -> Float
areaFiguraPlano (Circulo2 _ r)       = pi*r*r 
areaFiguraPlano (Retangulo2 _ l1 l2) = l1*l2

data FiguraPlano2  = FigPlano Ponto  Figura
                      deriving (Show, Eq)

areaFiguraPlano2 :: FiguraPlano2 -> Float
areaFiguraPlano2 (FigPlano _ (Circulo r))   = pi*r*r 
areaFiguraPlano2 (FigPlano _ (Retangulo l1 l2)) = l1*l2

-- recursividade
-- Linguagem de expressoes 

data Expr = Lit Int 
            | Add Expr Expr
            | Sub Expr Expr
             deriving (Show, Eq)

-- como é que eu faço uma função de avaliação de expressões? 

eval :: Expr -> Int 
eval (lit n)     = n 
eval (Add e1 e2) = eval e1 + eval e2 
eval (Sub e1 e2) = eval e1 - eval e2 
