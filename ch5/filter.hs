filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' f xs = [x | x <- xs, f x]
