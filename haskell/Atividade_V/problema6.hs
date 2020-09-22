ocorrencias :: [Int] -> Int -> Int


ocorrencias [] x = 0


ocorrencias [a] x | a == x = 1
                  | otherwise = 0


ocorrencias (head:tail) x | head == x = 1 + ocorrencias tail x
                          | otherwise = 0 + ocorrencias tail x


main = do
    let lista = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 5]

    print(ocorrencias lista 1)
    print(ocorrencias lista 2)
    print(ocorrencias lista 3)
    print(ocorrencias lista 4)
    print(ocorrencias lista 5)
    print(ocorrencias lista 134)
    print(ocorrencias [] 10)
    print(ocorrencias [1] 1)
