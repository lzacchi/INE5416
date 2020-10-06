apagar :: Int -> [Int] -> [Int]
apagar _ [] = []
apagar x (head:tail) | (x - 1) /= 0 = apagar (x - 1) tail
                     | otherwise = tail


main = do
    let list = [1 .. 100]

    print(apagar 1 list)
    print(apagar 10 list)
    print(apagar 78 list)
    print(apagar 120 list)
