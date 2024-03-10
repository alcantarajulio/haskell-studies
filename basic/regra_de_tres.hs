regraDeTres :: Float -> Float -> Float -> Float
regraDeTres a b c = (b * c) / a

main :: IO()
main = do
    line <- getLine
    let a = (read line :: Float)
    line <- getLine
    let b = (read line :: Float)
    line <- getLine
    let c = (read line :: Float)
    
    putStr "O valor de x é: "  
    print(regraDeTres a b c)
