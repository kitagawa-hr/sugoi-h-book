-- 関数と2つのリストを受け取って、2つのリストの各要素に関数を適用して1つのリストにする
-- add x y = x + y
-- zipWith add [1,2,3] [3,4,5] = [3, 6, 8]
zipWith' :: (a -> b -> c) -> [a] -> [b] -> [c]
zipWith' _ [] _ = []
zipWith' _ _ [] = []
zipWith' f (x:xs) (y:ys) = f x y : zipWith' f xs ys
