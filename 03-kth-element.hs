-- *) Find the K'th element of a list. The first element in the list is number 1.
--
-- Example in Haskell:
-- Prelude> elementAt [1,2,3] 2
-- 2
-- Prelude> elementAt "haskell" 5
-- 'e'

import Helpers

elementAt :: [a] -> Int -> a
elementAt [] _     = undefined
elementAt _  0     = undefined
elementAt (x:xs) 1 = x
elementAt (x:xs) n = elementAt xs (n-1)

main = runTests [
    elementAt [1, 2, 3] 2 @?= 2
  , elementAt "haskell" 5 @?= 'e'
  ]
