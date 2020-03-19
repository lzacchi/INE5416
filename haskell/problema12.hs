euclides :: Int -> Int -> Int
tripleEuclides :: Int -> Int -> Int -> Int

-- Euclides algorith:
--
euclides x y
    | x == 0 = y
    | y == 0 = x
    | otherwise = euclides y (x `mod` y)

tripleEuclides x y z = euclides (euclides x y) z

main = do
    xStr <- getLine
    yStr <- getLine
    zStr <- getLine

    let x = read xStr :: Int
    let y = read yStr :: Int
    let z = read zStr :: Int

    print(tripleEuclides x y z)
