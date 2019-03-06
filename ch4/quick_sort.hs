quickSort:: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort (x:xs) = lts ++ [x] ++ gts
  where lts = quickSort [y | y<-xs, y<=x]
        gts = quickSort [y | y<-xs, y>x]
