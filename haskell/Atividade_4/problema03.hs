triangleArea :: Float -> Float -> Float
triangleArea base height = (base * height)/2

main = do
    base_in <- getLine
    height_in <- getLine

    let base = read base_in :: Float
    let height = read height_in :: Float

    print(triangleArea base height)
