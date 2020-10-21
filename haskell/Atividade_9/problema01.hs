main = do
    x_str <- getLine
    y_str <- getLine

    let x = read x_str :: Int
    let y  = read y_str :: Int

    print((\a b -> a /= b)x y)
