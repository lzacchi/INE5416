power :: Int -> Int -> Int
power x y = x^y

main = do
    putStrLn "Informe x e y"
    x_string <- getLine
    y_string <- getLine

    let x = read x_string :: Int
    let y  = read y_string :: Int

    print(power x y)
