soma :: [Int] -> Int
soma [] = 0
soma (head:tail) = head + soma(tail)

main :: IO ()
main = do
    input <- getLine

    let length = (read input :: Int)
    let list = [1 .. length]

    print(soma list)
