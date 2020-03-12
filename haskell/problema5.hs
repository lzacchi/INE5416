grade :: Float -> Float -> Float -> String
grade a b c | (a + b + c)/3 >= 6 = "Aprovado"
            | otherwise = "Reprovado"


main = do
    grade_1String <- getLine
    grade_2String <- getLine
    grade_3String <- getLine

    let grade_1 = read grade_1String :: Float
    let grade_2 = read grade_2String :: Float
    let grade_3 = read grade_3String :: Float

    print(grade grade_1 grade_2 grade_3)
