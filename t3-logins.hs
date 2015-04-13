import Data.Char

userName :: String -> String
userName x = map (toLower)(takeWhile (/= x !! 1)x ++ (reverse (takeWhile (/=' ')(reverse x))))

lastName :: String -> String
lastName x 
	| filter (==' ')  x == [] = x
	| otherwise = lastName (tail x)

main :: IO ()
main = do
    strcontent <- readFile "nomes.csv"
    let strlist = lines strcontent
        strnew = [str ++ "," ++ userName str | str <- strlist]
    writeFile "logins.csv" (unlines strnew)