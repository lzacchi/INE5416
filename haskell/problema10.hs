maxNum :: Float -> Float -> Float -> Float

maxNum a b c = max (max a b) c


main = do
    aStr <- getLine
    bStr <- getLine
    cStr <- getLine

    let a = read aStr :: Float
    let b = read bStr :: Float
    let c = read cStr :: Float

    print(maxNum a b c)
