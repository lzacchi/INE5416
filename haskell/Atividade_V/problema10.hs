filtrar :: (t -> Bool) -> [t] -> [t]
filtrar function list = [x | x <- list, function x == True]

-- exemplos de funcao
is_even :: Int -> Bool
is_even x | rem x 2 == 0 = True
       | otherwise = False

is_odd :: Int -> Bool
is_odd x | rem (x + 1) 2 == 0 = True
      | otherwise = False

greater_than_zero :: Int -> Bool
greater_than_zero x | x > 0 = True
                    | otherwise = False


main = do
    let list = [0 .. 10]
    let list_2 = [-5 .. 5]

    print(filtrar is_even list)
    print(filtrar is_odd list)
    print(filtrar greater_than_zero list_2)
