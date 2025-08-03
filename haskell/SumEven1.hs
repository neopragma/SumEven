main :: IO ()
main = do
    let sumEven = sum [x | x <- [0..100], even x]
    print sumEven
