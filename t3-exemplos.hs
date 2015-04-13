import Data.Char
--1

--any
isElem :: Int -> [Int] -> Bool
isElem x = any (==x) -- Verifica se o elemento existe na lista

eleQuad ::  Int -> [Int] -> Bool
eleQuad x = any (==x^2) -- Verifica se existe o quadrado do elemento na lista

--all
allMaior :: Int -> [Int] -> Bool
allMaior x = all (> x) -- Veriica se todos os elementos da lista são maiores que o numero dado

allNegativos :: [Int] -> Bool
allNegativos x = all(<0) x --Verifica se todos numeros são negativos

--$
ex :: [Int] -> [Int]
ex x = map (+10) $ map (*10)x  -- multiplica 10 a cada elemento da lista e depois soma mais 10

ex1 :: [String] -> String -> [String]
ex1 x y = map(++ ".") $ map (++ y)x  -- Acrescenta um sufixo e um ponto a cada string da lista

--composição de funções
email :: [String] -> [String] -- Acrescenta o prefixo email: e o sufixo @inf.ufsm.br na lista de strings
email  x =
	let 
	  a = ("email: "++)
	  b = (++"@inf.ufsm.br")
	in map (a . b) x

calculo :: [Int] -> [Int] -- Eleva ao cubo e soma 10 a cada elemento da lista
calculo x =
	let 
	  a = (+10)
	  b = (^3)
	in map (a . b) x

--Referências
--http://zvon.org/other/haskell/Outputprelude/any_f.html
--http://zvon.org/other/haskell/Outputprelude/all_f.html
--http://haskell.tailorfontela.com.br/higher-order-functions#function-application
--http://stackoverflow.com/questions/940382/haskell-difference-between-dot-and-dollar-sign
--http://www.facom.ufu.br/~madriana/PF/tutorial_avancado.pdf
