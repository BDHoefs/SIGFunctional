a :: Int
a = 5

name :: String
name = "Ben"

add :: Num a => a -> a -> a
add x y = x + y

greet :: String -> String
greet name = "Hello" ++ name

facIfElse :: Integer -> Integer
facIfElse x =
  if x <= 0
    then 1
    else x * facIfElse (x - 1)

facCaseOf :: Integer -> Integer
facCaseOf x = case x of
  0 -> 1
  _ -> x * facCaseOf (x - 1)

facPattern :: Integer -> Integer
facPattern 0 = 1
facPattern x = x * facPattern (x - 1)

facGuard :: Integer -> Integer
facGuard x
  | x <= 0 = 1
  | otherwise = x * facGuard (x - 1)

inc :: Int -> Int
inc x = let y = 1 in x + y

incWhere :: Int -> Int
incWhere x = x + y where y = 1

sort :: [Int] -> [Int]
sort [] = []
sort (x : xs) = left ++ [x] ++ right
  where
    left = sort [elem | elem <- xs, elem <= x]
    right = sort [elem | elem <- xs, elem > x]