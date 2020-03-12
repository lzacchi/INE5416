absolute :: Int -> Int

absolute x | x >= 0 = x
           | x<0 = -x

main = do
    xString <- getLine

    let x = read xString :: Int

    print(absolute x)
