coprime :: Int -> Int -> String
euclides :: Int -> Int -> Int

euclides x y | x == 0 = y
             | y == 0 = x
             | otherwise = euclides y (x `mod` y)

coprime x y | euclides x y /= 1 = "Não são coprimos"
            | otherwise = "São coprimos"


main = do
    xStr <- getLine
    yStr <- getLine

    let x = read xStr :: Int
    let y = read yStr :: Int

    print(coprime x y)
