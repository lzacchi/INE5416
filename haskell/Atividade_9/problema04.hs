bhaskara :: Float -> Float -> Float -> (Float, Float)
bhaskara a b c=
    let delta = sqrt(b^2 - 4 * a * c)
    in ( (-b + delta)/(2*a), (-b - delta)/(2*a) )


main = do
    a_str <- getLine
    b_str <- getLine
    c_str <- getLine

    let a = read a_str :: Float
    let b = read b_str :: Float
    let c = read c_str :: Float

    print(bhaskara a b c)
