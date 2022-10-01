{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}

{-# HLINT ignore "Eta reduce" #-}
{-# HLINT ignore "Use sum" #-}
{-# HLINT ignore "Use product" #-}
{-# HLINT ignore "Use concatMap" #-}

sum' :: [Integer] -> Integer
sum' xs = foldr (+) 0 xs

product' :: [Integer] -> Integer
product' xs = foldr (*) 1 xs

and' :: [Bool] -> Bool
and' bs = foldr (==) True bs

or' :: [Bool] -> Bool
or' bs = foldr (==) False bs

istos :: [Integer] -> String
-- istos xs = concat (map (show) xs)
istos xs = concatMap show xs
