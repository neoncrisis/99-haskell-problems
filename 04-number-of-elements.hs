-- (*) Find the number of elements of a list.
--
-- Example in Haskell:
-- Prelude> myLength [123, 456, 789]
-- 3
-- Prelude> myLength "Hello, world!"
-- 13

import Helpers

myLength :: [a] -> Int
myLength []     = 0
myLength (_:xs) = 1 + myLength xs

main = runTests [
    myLength [123, 456, 789] @?= 3
  , myLength "Hello, world!" @?= 13
  ]
