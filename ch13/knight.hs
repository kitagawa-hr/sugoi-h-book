type KnightPos = (Int, Int)

moveKnight :: KnightPos -> [KnightPos]
moveKnight (x, y) = let onBoard (x, y) = x `elem` [1..8] && y `elem` [1..8] in
    filter onBoard [
        (x+2, y+1), (x-2, y-1), (x-2, y+1), (x-2, y-1),
        (x+1, y+2), (x-1, y-2), (x-1, y+2), (x-1, y-2)
        ]