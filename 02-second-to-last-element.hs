-- (*) Find the last but one element of a list.
-- (Note that the Lisp transcription of this problem is incorrect.)
--
-- Example in Haskell:
-- Prelude> myButLast [1,2,3,4]
-- 3
-- Prelude> myButLast ['a'..'z']
-- 'y'

import Helpers

myButLast :: [a] -> a
myButLast [] = undefined
myButLast (_:[]) = undefined
myButLast (x:_:[]) = x
myButLast (_:_:xs) = myButLast xs

-- Try it
main = runTests [
    myButLast [1, 2, 3, 4] @?= 3
  , myButLast ['a'..'z'] @?= 'y'
  ]
