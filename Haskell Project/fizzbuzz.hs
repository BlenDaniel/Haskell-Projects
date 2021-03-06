fizzbuzz :: Integer -> String
fizzbuzz x
    | mod x 3 == 0 = "Fizz"
    | mod x 5 == 0 = "Buzz"
    | mod x 15 == 0 = "FizzBuzz"
    | otherwise = show x


fizzbuzzListRight :: [Integer] -> [String]
fizzbuzzListRight (x:xs) = foldr ((:).fizzbuzz) [show (listLast xs)] (map pred xs)

fizzbuzzListLeft :: [Integer] -> [String]
fizzbuzzListLeft (x:xs) = foldl (flip ((:).fizzbuzz)) [show (listLast xs)] (foldl (flip (:)) [] (map pred xs))

listLast :: [a] -> a
listLast [x] = x --base case is when there's just one element remaining
listLast (_:xs) = listLast xs

fizzbuzzListRightPrinter :: [String]
fizzbuzzListRightPrinter = foldr ((:).fizzbuzz) ["16"] [1..15]

fizzbuzzListLeftPrinter :: [String]
fizzbuzzListLeftPrinter = reverseList ( foldl (flip ((:).fizzbuzz)) ["16"] (foldl (flip (:)) []  [1..15]))

reverseList xs = foldl (\x y -> y:x) [] xs 
