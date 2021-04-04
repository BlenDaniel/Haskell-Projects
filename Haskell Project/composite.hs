import Data.List
import Data.Int
import Text.Printf

import Data.Ratio

last' :: [a] -> a
last' = (head . reverse)

rsort :: Ord a => [a] -> [a]
rsort = (reverse . sort)

odd' :: Int -> Bool
odd' = not . even

sumOfOdds :: Integral a => [a] -> a
sumOfOdds = sum . filter (not . even)

f :: Num a => a -> a
f = (\x -> x ^ 2) . (\x -> x + 1)

i8max = maxBound :: Int8
i8min = minBound :: Int8

main = print $ 1%2 + 1%3
