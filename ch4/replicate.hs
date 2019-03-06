replicate'::Int->a->[a]
replicate' n a
    | n<=0 = []
    | otherwise = a : replicate' (n-1) a
