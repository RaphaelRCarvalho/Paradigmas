
-- EXERCICIOS

-- 1) Escreva uma fun��o hasEqHeads :: [Int] -> [Int] -> Bool que verifica se as 2 listas possuem o mesmo primeiro elemento. 

hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads n r = if (head n) == (head r) then True else False

-- 2) Observe a fun��o abaixo, que eleva ao cubo cada elemento da lista, produzindo outra lista. 

pot3 :: [Int] -> [Int]
pot3 [] = []
pot3 ns = (head ns)^3 : pot3 (tail ns)

-- 3) Escreva uma fun��o recursiva add10, que adicione a constante 10 a cada elemento de uma lista, produzindo outra lista.

add10 :: [Int] -> [Int]
add10 [] = []
add10 x = (head x)+10 : add10 (tail x)
 

-- 4) Escreva uma fun��o recursiva addComma, que adicione uma v�rgula no final de cada string contida numa lista

addComma :: [String] -> [String]
addComma []=[]
addComma x = ((head x) ++ ",") : addComma (tail x)

-- 5) Refa�a os 2 exerc�cios anteriores usando a fun��o de alta ordem 'map'. 

add10v2 :: [Int] -> [Int]
add10v2 []=[]
add10v2 x =  map(+10)x

addCommav2 :: [String] -> [String]
addCommav2 []=[]
addCommav2 x = map(++",")x 

-- 6) Crie uma fun��o htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML.

link :: String -> String 
link x = "<LI>" ++ x ++ "</LI>"

htmlListItems :: [String] -> [String]
htmlListItems x = map (link) x  

-- 7) Crie uma fun��o recursiva charFound :: Char -> String -> Bool, que verifique se o caracter (primeiro argumento) est� contido na string (segundo argumento)

charFound :: Char -> String -> Bool
charFound  _ "" = False
charFound x y
	| x == (head y) = True
        | otherwise = charFound x (tail y) 

-- 8) Reescreva a fun��o anterior sem recurs�o, usando outras fun��es pr�-definidas j� vistas em aula.

charFound1 :: Char -> String -> Bool
charFound1 _ [] = False
charFound1 x y = if (filter(== x)y) == [] then False else True

-- 9) Use a fun��o de alta ordem 'zipWith' para produzir uma fun��o que obtenha as diferen�as, par a par, dos elementos de duas listas. 

difParaPar :: [Int] -> [Int] -> [Int]
difParaPar x y = zipWith (-) x y 

--FUN��ES ALTA ORDEM

-- 1) Dada uma lista de n�meros, calcular 2*n+1 para cada n�mero n contido na lista. 

operacao :: [Int] -> [Int]
operacao x = map (+1)(map (*2) x)

-- 2) Dadas duas listas X e Y de n�meros inteiros, calcular 4*x+2*y+1 para cada par de n�meros x e y pertencentes �s listas. 

operacao1 :: [Int] -> [Int] -> [Int]
operacao1 x y
	| x == [] = []
	| y == [] = []
	| otherwise = map (1+) (zipWith (+) (map(4*)x) (map(2*)y)) 

-- 3) Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, usando o seguinte esquema: 
   -- strings de entrada com mais de 10 caracteres s�o truncadas, 
   -- strings com at� 10 caracteres s�o completadas com '.' at� ficarem com 10 caracteres

operacaostrg :: String -> String 
operacaostrg x
	| length x > 10 = operacaostrg (init x)
	| length x < 10 = operacaostrg (x ++ ".") 
	| otherwise = x

loop :: [String] -> [String]
loop x = map (operacaostrg) x

-- 4) Dada uma lista de idades, selecionar as que s�o maiores que 20 e, para cada uma, 
   -- calcular o ano de nascimento correspondente (aproximado, considerando o ano atual). 

calculoidade :: [Int] -> [Int]
calculoidade x = filter (<1996) (map (2015 -) x)




