euclides :: Int -> Int -> Int

-- Euclides algorith:
--
euclides x y
    | x == 0 = y
    | y == 0 = x
    | otherwise = euclides y (x `mod` y)


main = do
    xStr <- getLine
    yStr <- getLine

    let x = read xStr :: Int
    let y = read yStr :: Int

    print(euclides x y)
