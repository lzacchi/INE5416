fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci x = fibonacci(x-1 )+ fibonacci(x - 2)

main = do
    xStr <- getLine

    let x = read xStr :: Int

    print(fibonacci x)
