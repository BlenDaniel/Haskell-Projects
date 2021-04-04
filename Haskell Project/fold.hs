fizzbuzz :: Int -> String
fizzbuzz n
      | n `mod` 3 == 0 && n `mod` 5 == 0 = "fizzbuzz"
      | n `mod` 3 == 0 = "fizz"
      | n `mod` 5 == 0 = "buzz"
      | otherwise = show n

seqq :: [String]
seqq = foldr ((:).fizzbuzz) ["16"] [1..15]

test :: [String]
test = foldr (\x -> \y -> (fizzbuzz x : y)) ["16"] [1..15]

foldr' :: (a -> b -> b) -> b -> [a] -> b
foldr' f z [] = z
foldr' f z (x:xs) = f x (foldr' f z xs)


seqL :: [String]
seqL = foldl (\x -> \y -> (fizzbuzz y : x)) ["16"] [2, 5]



foldl' :: (a -> b -> a) -> a -> [b] -> a
foldl' f z [] = z
foldl' f z (x:xs) = foldl' f (f z x) xs


 
{-
    append xs ys = foldr (:) ys xs
    append = \xs -> \ys -> foldr (\x -> \y -> x:y) ys xs
    https://softwareengineering.stackexchange.com/questions/173559/using-foldr-to-append-two-lists-together-haskell
-}

