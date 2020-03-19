eulersTotient :: Int -> [Bool]
euclides :: Int -> Int -> Int
coprime :: Int -> Int -> Bool


euclides x y | x == 0 = y
             | y == 0 = x
             | otherwise = euclides y (x `mod` y)


coprime x y | euclides x y /= 1 = False
            | otherwise = True


eulersTotient a =
    [coprime x a | x <- [1..a-1], coprime x a]

main = do
    aStr <- getLine

    let a = read aStr :: Int

    print(length(eulersTotient a))
