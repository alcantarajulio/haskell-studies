-- Júlio Alcantara - 122110504
-- Paradigmas de Linguagem de Programação 2023.2 Prática 2

fibonacci :: Integer -> Integer
fibonacci n
     | n == 0 = 0
     | n == 1 = 1
     | otherwise = fibonacci (n-1) + fibonacci (n-2)

main :: IO()
main = do
    line <- getLine 
    n <- readLn :: IO Integer
    print(fibonacci n)
