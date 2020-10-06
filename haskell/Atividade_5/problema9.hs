mapear :: (t -> y) -> [t] -> [y]
mapear function list = [function x | x <- list]

-- exemplos de função
square :: Int -> Int
square x = x * x

successor :: Int -> Int
successor x = x + 1

zero :: Int -> Int
zero x = 0


main = do
    let list = [1 .. 10]

    print (mapear square list)
    print (mapear successor list)
    print (mapear zero list)
