menor :: [Int] -> Int
menor [] = 0
menor[a] = a
menor (a:b) | a > menor(b) = menor (b)
            | otherwise = a

main = do
    let list = [-5, 10, -5243, 13451234, 0, 1, 13 ,51]
    let list_2 = []
    let list_3 = [13]
    print(menor list)
    print(menor list_2)
    print(menor list_3)
