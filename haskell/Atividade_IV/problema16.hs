divisible:: Int -> Int -> Bool

divisible x  y | x `mod` y == 0 = True
               | otherwise = False

main = do
    xStr <- getLine
    yStr <- getLine

    let x = read xStr :: Int
    let y = read yStr :: Int
    print(divisible x y)
