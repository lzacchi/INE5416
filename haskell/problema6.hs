validTriangle :: Float -> Float -> Float -> String

-- abs :: Float -> Float
-- abs x | x >= 0 = x
--       | otherwise = -x

validTriangle a b c | abs(b - c) < a && a < (b + c) = "Triângulo Válido"
                    | abs(a - c) < b && b < (a + c) = "Triângulo Válido"
                    | abs(a - b) < c && c < (a + b) = "Triangulo Válido"
                    | otherwise = "Triangulo Inválido"

main = do
    aStr <- getLine
    bStr <- getLine
    cStr <- getLine

    let a = read aStr :: Float
    let b = read bStr :: Float
    let c = read cStr :: Float

    print(validTriangle a b c)
