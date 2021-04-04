rotate :: Int -> [a] -> [a]
rotate x st = take (length st) $ drop (negate x `mod` length st) $ cycle st


