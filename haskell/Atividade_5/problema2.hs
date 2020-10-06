length' :: [Int] -> Int
length' [] = 0
length' (head:tail) = 1 + length'(tail)

soma :: [Int] -> Int
soma [] = 0
soma (head:tail) = head + soma tail

media :: [Int] -> Float
media [] = 0
media list = fromIntegral (soma list)/ fromIntegral(length' list)

main = do
    input <- getLine
    let list_length = (read input :: Int)
    let list = [1 .. list_length]

    print(media list)
