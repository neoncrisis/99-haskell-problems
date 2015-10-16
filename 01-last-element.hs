-- (*) Find the last element of a list.
-- (Note that the Lisp transcription of this problem is incorrect.)
--
-- Example in Haskell:
-- Prelude> myLast [1,2,3,4]
-- 4
-- Prelude> myLast ['x','y','z']
-- 'z'

import Helpers (test)

myLast :: [a] -> a
myLast [] = undefined
myLast (x:[]) = x
myLast (_:xs) = myLast xs

-- Try it
main = do
  test "Integer List" $ myLast [1, 2, 3, 4] == 4
  test "Character List" $ myLast ['x', 'y', 'z'] == 'z'
