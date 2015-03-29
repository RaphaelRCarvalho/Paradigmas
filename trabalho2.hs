-- PARTE 1

-- Escreva uma função geraPotencias :: Int -> [Int], que gere uma lista com as potências de 2, com expoente de n até 0, onde n é o argumento para a função. Use a sintaxe de list comprehension. Exemplo de uso da função: 

geraPotencias :: Int -> [Int]
geraPotencias x = [2^x | x <- [x, (x-1)..0]]

-- Escreva uma função addSuffix :: String -> [String] -> [String] usando list comprehension, para adicionar um sufixo às strings contidas numa lista.

addSuffix :: String -> [String] -> [String]
addSuffix x y = [ z ++ x  | z <- y ]

-- Escreva uma função anosDeNascimento :: [Int] -> [Int] que receba uma lista de idades, selecione as que são maiores que 20 e, para cada uma das selecionadas, calcule o ano de nascimento correspondente (aproximado).

anosDeNascimento :: [Int] -> [Int]
anosDeNascimento x = [ (2015 -) x | x <- x, x > 20]

