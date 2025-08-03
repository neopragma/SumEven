main :: IO ()
main = do
    let sumEven = sum (filter even [0..100])
    print sumEven
