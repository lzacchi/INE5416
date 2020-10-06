inverte :: [a] -> [a]
inverte [] = []
inverte [t] = [t]
inverte (head:tail) = inverte tail ++ [head]

main = do
    let list = [1 .. 10]

    print(inverte list)
