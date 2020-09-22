menor :: [Int] -> Int
menor [] = 0
menor[a] = a
menor (a:b) | a > menor(b) = menor (b)
            | otherwise = a


maior :: [Int] -> Int
maior [] = 0
maior [a] = a
maior (a:b) | a < maior (b) = maior (b)
            | otherwise = a


diferencaMaiorMenor :: [Int] -> Int
diferencaMaiorMenor [] = 0
diferencaMaiorMenor [a] = a
diferencaMaiorMenor list = maior list - menor list


main = do
    let list = [0 .. 10]
    let list_2 = [-5 .. 0]
    let list_3 = [5 .. 30]
    let list_4 = [-10 .. 10]

    print(diferencaMaiorMenor list)
    print(diferencaMaiorMenor list_2)
    print(diferencaMaiorMenor list_3)
    print(diferencaMaiorMenor list_4)
