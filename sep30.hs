fac :: Integer -> Integer
fac x = product [1 .. x]

x = [1 .. 10]

last' :: [a] -> a
last' xs = head (reverse xs)

map' :: (a -> b) -> [a] -> [b]
map' f xs = [f x | x <- xs]

filter' :: (a -> Bool) -> [a] -> [a]
filter' p xs = [x | x <- xs, p x]

concat' :: [[a]] -> [a]
concat' xss = [x | xs <- xss, x <- xs]