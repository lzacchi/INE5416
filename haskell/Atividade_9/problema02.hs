main = do
    n1_str <- getLine
    n2_str <- getLine
    n3_str <- getLine

    let n1 = read n1_str :: Float
    let n2 = read n2_str :: Float
    let n3 = read n3_str :: Float

    print((\a b c -> if (a + b + c)/3 >= 6 then "Aprovado" else "Reprovado") n1 n2 n3)
