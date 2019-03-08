-- 100000以下で3829で割り切れる最大の数
questionOne =
  let divisible x = x `mod` 3829 == 0
  in head $ filter divisible [100000, 99999..]

-- 10000より小さいすべての奇数の平方数の和
questionTwo = sum [x*x | x <- [1..100], x `mod` 2 /= 0]

-- 1から100までで長さ15以上のコラッツの開始数の数
-- even => /2, odd => (*3) +1
collatzLength :: Integer -> Integer
collatzLength 1 = 1
collatzLength x
  | x <= 0 = 0
  | x `mod` 2 == 0 = 1 + collatzLength (x `div` 2)
  | otherwise = 1 + collatzLength (3 * x+ 1)
questionThree = length $ filter (>15) (map collatzLength [1..100])
