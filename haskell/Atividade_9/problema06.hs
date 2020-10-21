maior :: Int -> Int -> Int
maior a b =
    (\x y -> if a < b then x else y) a b

main = do
    x_str <- getLine
    y_str <- getLine
    z_str <- getLine

    let x = read x_str :: Int
    let y = read y_str :: Int
    let z = read z_str :: Int

    print((\a b c -> if a > b && a > c then x else maior y z) x y z)
