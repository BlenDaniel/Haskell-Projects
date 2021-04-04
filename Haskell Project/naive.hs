{- |
Module: naive-search/Search.hs

Search for a substring in a text using the naive search algorithm.
-}

module Search (findFirstIn, isPrefixOf) where

isPrefixOf :: Eq a => [a] -> [a] -> Bool
isPrefixOf [] _ = True
isPrefixOf _ [] = False
isPrefixOf (x:xs) (y:ys) = (x == y) && isPrefixOf xs ys

findFirstIn :: Eq a => [a] -> [a] -> Int
findFirstIn = cntFindFirstIn 0 where
cntFindFirstIn :: Eq a => Int -> [a] -> [a] -> Int
cntFindFirstIn _ _ [] = -1
cntFindFirstIn n p t
    | p `isPrefixOf` t = n
    | otherwise = cntFindFirstIn (n+1) p (tail t)