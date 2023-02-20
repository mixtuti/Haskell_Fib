-- フィボナッチ数列を最初のn個分リストにして返すプログラム

fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-2) + fib (n-1)

fibl 0 = [1]
fibl 1 = [1,1]
fibl n = fibl (n-1) ++ [fib n]

main = print (fibl 10)

-- 上の例では、一つ多く余計に出力してしまう。下の例では、通常通りの数出力できるがmainの書き方が少し違う。

-- fibo :: (Int -> Int) -> Int -> [Int]
-- fibo func n = [func x| x <- [0..n-1]]

-- fibl :: Int -> Int
-- fibl 0 = 1
-- fibl 1 = 1
-- fibl n = fibl (n-1) + fibl (n-2)

-- main = print (fibo fibl 10)
