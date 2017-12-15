{-# LANGUAGE FlexibleContexts #-}
module RD where

sumItAll [] = 0    
sumItAll (n:ns) = n + sumItAll ns

qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
               where 
                    smaller = [a | a <- xs, a <= x]
                    larger  = [b | b <- xs, b > x]

                    
rqsort [] = []
rqsort (x:xs) = rqsort larger ++ [x] ++ qsort smaller
               where 
                    smaller = [a | a <- xs, a <= x]
                    larger  = [b | b <- xs, b > x]

seqn [] = return []
seqn (act:acts) = do x <- act 
                     xs <- seqn acts
                     return (x:xs)

                     
fizzbuzz :: Int -> String
fizzbuzz x | x `mod` 3 == 0 && x `mod` 5 == 0 = "fizzbuzz"
           | x `mod` 3 == 0 = "fizz"
           | x `mod` 5 == 0 = "buzz"     
           | otherwise = show x     

