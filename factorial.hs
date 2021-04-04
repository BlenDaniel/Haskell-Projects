fac n
    | n <= 1    = 1
    | otherwise = n * fac (n - 1)


cnt :: Eq a => a -> [a] -> Int
cnt x [] = 0
cnt x (y:ys)
    | x == y    = 1 + (cnt x ys)
    | otherwise = cnt x ys

con :: [a] -> [a] -> [a]
con [] ys = ys
con (x:xs) ys = x : (con xs ys)


rotate :: Int -> [a] -> [a]
rotate x st = take (length st) $ drop (negate x `mod` length st) $ cycle st



combine :: [a] -> [a] -> [[a]]
combine xs xy = [xs, ys]

circle :: [a] -> [[a]]
circle x =
    | (length x) == 0 = x
    | otherwise = (combine x x : circle x $ drop 0)