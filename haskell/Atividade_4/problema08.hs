bhaskara :: Float -> Float -> Float -> [Float]
delta :: Float -> Float -> Float -> Float

delta a b c = (b^2) - (4 * a * c)
-- x = (-b +- sqrt(b**2 - 4ac))/2a
bhaskara a b c = [(-b + sqrt(delta a b c))/(2*a),
                  (-b - sqrt(delta a b c))/(2*a)]

main = do
    aStr <- getLine
    bStr <- getLine
    cStr <- getLine

    let a = read aStr :: Float
    let b = read bStr :: Float
    let c = read cStr :: Float

    print(bhaskara a b c)
