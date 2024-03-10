-- Júlio Alcantara - 122110504
-- Paradigmas de Linguagem de Programação 2023.2 Prática 2

fibonacci :: Int -> Int
fibonacci n
     | n == 0 = 0
     | n == 1 = 1
     | otherwise = fibonacci (n - 1) + fibonacci (n - 2)

checkFib :: Int -> Int -> Int
checkFib sum n
  | sumOfDigits (fibonacci n) == sum = fibonacci n
  | otherwise = checkFib sum (n + 1)

sumOfDigits :: Int -> Int
sumOfDigits n
  | n == 0 = 0
  | otherwise = n `mod` 10 + sumOfDigits (n `div` 10)


main :: IO()
main = do
    n <- readLn :: IO Int
    print(checkFib n 0)
