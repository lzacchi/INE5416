primeiros ::  Int -> [t] -> [t]
primeiros _ [] = []
primeiros x [a] = [a]
primeiros x (head:tail) | (x-1) /= 0 = [head] ++ primeiros (x-1) tail
                        | otherwise = [head]


main = do
    let list = [1 .. 50]

    print(primeiros 10 list)
    print(primeiros 1 list)
    print(primeiros 25 list)
    print(primeiros 70 list)
