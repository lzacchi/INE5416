euclides :: Int -> Int -> Int
euclidesLcm :: Int -> Int -> Int

-- To find the least common multiple we can
-- use the euclidean algorithm of greatest common divisor:
-- the way it works is: lcm (x¹, x²) = x¹ * x²/gcd(x¹, x²)

euclides x y
    | x == 0 = y
    | y == 0 = x
    | otherwise = euclides y (x `mod` y)

euclidesLcm x y =
    (x * y) `div` euclides x y


main = do
    xStr <- getLine
    yStr <- getLine

    let x = read xStr :: Int
    let y = read yStr :: Int

    print (euclidesLcm x y)
