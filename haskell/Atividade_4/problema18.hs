operation :: Char -> Float -> Float -> Float

operation op x y
    | op == '+' = x + y
    | op == '-' = x - y
    | op == '*' = x * y
    | op == '/' = x / y
    | otherwise = 0.0


main = do
    opStr <- getLine
    xStr <- getLine
    yStr <- getLine

    let op = opStr !! 0
    let x = read xStr :: Float
    let y = read yStr :: Float

    print(operation op x y)
