module HAD.Y2014.M02.D24.Exercise where

-- | Filter a list, keeping an element only if it is equal to the next one.
--
-- Examples:
-- >>> filterByPair []
-- []
-- >>> filterByPair [1 .. 10]
-- []
-- >>> filterByPair [1, 2, 2, 2, 3, 3, 4]
-- [2,2,3]

filterByPair :: Ord a => [a] -> [a]
filterByPair (x:y:ys) = if x==y then x: filterByPair (y:ys) else filterByPair (y:ys)
filterByPair _ = []
