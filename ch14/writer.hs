import Control.Monad.Writer

logNumber :: Int -> Writer [String] Int
logNumber x = writer (x, ["Got number: " ++ show x])

multiWithLog :: Writer [String] Int
multiWithLog = do
    a <- logNumber 3
    b <- logNumber 5
    tell ["Gonna multiply these two"]
    return (a * b)

main = do
    putStrLn $ show $ runWriter multiWithLog