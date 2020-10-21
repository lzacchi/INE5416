import Data.Function

fatorial :: Int -> Int
fatorial = fix (\f n -> if n < 2 then 1 else f(n-1) + f (n-2))

main = do
    n_str <- getLine

    let n = read n_str :: Int

    print(fatorial n)
