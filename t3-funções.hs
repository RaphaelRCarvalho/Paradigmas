import Data.Char


--Escreva uma fun��o recursiva firstName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu primeiro nome.
--Suponha que cada parte do nome seja separada por um espa�o e que n�o existam espa�os no in�cio ou fim do nome. 

firstName :: String -> String
firstName x 
	| filter (==' ')  x == [] = x
	| otherwise = firstName (init x)

--Escreva uma fun��o firstName' :: String -> String com o mesmo resultado do exerc�cio anterior, mas sem usar recurs�o.
firstName' :: String->String
firstName' x = takeWhile (/=' ')x

--Escreva uma fun��o lastName :: String -> String que, dado o nome completo de uma pessoa, obtenha seu �ltimo sobrenome
lastName :: String -> String
lastName x 
	| filter (==' ')  x == [] = x
	| otherwise = lastName (tail x)

--Escreva uma fun��o n�o-recursiva userName :: String -> String que, dado o nome completo de uma pessoa,
--crie um nome de usu�rio (login) da pessoa, formado por: primeira letra do nome seguida do sobrenome, tudo em min�sculas.

userName :: String -> String
userName x = map (toLower)(takeWhile (/= x !! 1)x ++ (reverse (takeWhile (/=' ')(reverse x))))

--Escreva uma fun��o n�o-recursiva encodeName :: String -> String que substitua vogais em uma string, conforme o esquema a seguir: a = 4, e = 3, i = 1, o = 0, u = 00.

encodeName :: String -> String 
encodeName x = concat(map(substituir) x)
	where substituir str
		|(str) == 'a' = "4"
		|(str) == 'A' = "4"
		|(str) == 'e' = "3"
		|(str) == 'E' = "3" 
		|(str) == 'i' = "1"
		|(str) == 'I' = "1"
		|(str) == 'o' = "0"
		|(str) == 'O' = "0"
		|(str) == 'u' = "00"
		|(str) == 'U' = "00"
		|otherwise = [str]
	

--Escreva uma fun��o isElem :: Int -> [Int] -> Bool que verifique se um dado elemento pertence a uma lista.

isElem :: Int -> [Int] -> Bool
isElem _ [] = False
isElem x y 
	| x == (head y) = True
	| otherwise = isElem x (tail y)

--Escreva uma fun��o recursiva que retorne o n�mero de vogais em uma string.

contaVogais :: String -> Int
contaVogais [] = 0
contaVogais x
	| (head x) == 'a' = 1 + contaVogais (tail x)
	| (head x) == 'e' = 1 + contaVogais (tail x)
	| (head x) == 'i' = 1 + contaVogais (tail x)
	| (head x) == 'o' = 1 + contaVogais (tail x)
	| (head x) == 'u' = 1 + contaVogais (tail x)
	| otherwise = contaVogais (tail x)

--Escreva uma fun��o n�o-recursiva que retorne o n�mero de consoantes em uma string. 

contaConsoantes :: String -> Int
contaConsoantes x = length (x) - (a + b + c + d + e + espaco)
	where
	    a = length(filter (=='a')x)
	    b = length(filter (=='e')x)
	    c = length(filter (=='i')x)
	    d = length(filter (=='o')x)
	    e = length(filter (=='u')x)
	    espaco = length(filter (==' ')x)

--Escreva uma fun��o n�o-recursiva isInt :: String -> Bool que verifique se uma dada string s� cont�m d�gitos (0 a 9). 

isInt :: String -> Bool
isInt x = (a && b)
	where
	  a = and(map(>='0')x)
	  b = and(map (<='9')x)

--Escreva uma fun��o n�o-recursiva strToInt :: String -> Int que converta uma string em um n�mero inteiro, fazendo opera��es aritm�ticas com seus d�gitos.

strToInt :: String -> Int
strToInt x = sum $ zipWith (*) (map (10^) [(length x) -1, (length x) -2 .. 0]) $ map (digitToInt) x



 	
	