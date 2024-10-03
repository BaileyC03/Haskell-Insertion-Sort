insertionSort :: [Int] -> [Int]
insertionSort [] = [] -- Base case, an empty list is already sorted
insertionSort (x:xs) = insert x (insertionSort xs) -- Recursively calling itself to insert "x" on the list, left to right.
-- Insertion sort with x appended to xs is inserting x into xs (which has been pre sorted as its like "unwinding" the recursion stack" using the insert function. 


insert :: Int -> [Int] -> [Int] -- Insert Function
insert x [] = [x] -- Base Case, an empty list can just be returned. Increased efficiency and shit
insert x (y:ys) -- All other cases
    | x <= y = x : y : ys -- If X less than or equal to x, slap it at the start
    | otherwise = y : insert x ys -- Otherwise, slap it after the y (and recursively do this while going deeper into the list)
