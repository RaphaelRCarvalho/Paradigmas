-- PARTE 1

-- Escreva uma fun��o geraPotencias :: Int -> [Int], que gere uma lista com as pot�ncias de 2, com expoente de n at� 0, onde n � o argumento para a fun��o. Use a sintaxe de list comprehension. Exemplo de uso da fun��o: 

geraPotencias :: Int -> [Int]
geraPotencias x = [2^x | x <- [x, (x-1)..0]]

-- Escreva uma fun��o addSuffix :: String -> [String] -> [String] usando list comprehension, para adicionar um sufixo �s strings contidas numa lista.

addSuffix :: String -> [String] -> [String]
addSuffix x y = [ z ++ x  | z <- y ]

-- Escreva uma fun��o anosDeNascimento :: [Int] -> [Int] que receba uma lista de idades, selecione as que s�o maiores que 20 e, para cada uma das selecionadas, calcule o ano de nascimento correspondente (aproximado).

anosDeNascimento :: [Int] -> [Int]
anosDeNascimento x = [ (2015 -) x | x <- x, x > 20]

