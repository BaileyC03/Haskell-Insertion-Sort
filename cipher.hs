insertionSort :: [Int] -> [Int]
insertionSort [] = [] -- Base case, an empty list is already sorted
insertionSort (x:xs) = insert x (insertionSort xs) -- Recursively calling itself to insert "x" on the list, left to right.
-- Insertion sort with x appended to xs is inserting x into xs (which has been pre sorted as its like "unwinding" the recursion stack" using the insert function. 
--


insert :: Int -> [Int] -> [Int] -- Insert Function
insert x [] = [x]
insert x (y:ys)
    | x <= y = x : y : ys
    | otherwise = y : insert x ys