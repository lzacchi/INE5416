busca :: [Int] -> Int -> Bool
busca [] x = False
busca [a] x | a == x = True
            | otherwise = False
busca (head:tail) x | head == x = True
                    | otherwise = busca tail x


main = do
    let list = [0 .. 10]
    let list_2 = [0, 2 .. 20]
    let list_3 = [1, 3 .. 21]
    let list_4 = [-10 .. 10]

    let a = 7
    let b = 10
    let c = 1
    let d = 14
    let e = -6
    let f = -16

    print(busca list a)
    print(busca list b)
    print(busca list c)
    print(busca list d)
    print(busca list e)
    print(busca list f)

    print(" ")

    print(busca list_2 a)
    print(busca list_2 b)
    print(busca list_2 c)
    print(busca list_2 d)
    print(busca list_2 e)
    print(busca list_2 f)

    print(" ")

    print(busca list_3 a)
    print(busca list_3 b)
    print(busca list_3 c)
    print(busca list_3 d)
    print(busca list_3 e)
    print(busca list_3 f)

    print(" ")

    print(busca list_4 a)
    print(busca list_4 b)
    print(busca list_4 c)
    print(busca list_4 d)
    print(busca list_4 e)
    print(busca list_4 f)
