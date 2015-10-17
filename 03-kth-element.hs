-- *) Find the K'th element of a list. The first element in the list is number 1.
--
-- Example in Haskell:
-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'

import Helpers

elementAt :: [a] -> Int -> a
elementAt [] _     = error "Index out of bounds"
elementAt (x:_) 1  = x
elementAt (_:xs) n
  | n < 1          = error "Index out of bounds"
  | otherwise      = elementAt xs (n-1)

main = runTests [
    elementAt [1, 2, 3] 2 @?= 2
  , elementAt "haskell" 5 @?= 'e'
  ]
