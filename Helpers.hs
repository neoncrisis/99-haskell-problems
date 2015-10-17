module Helpers (
  (@?)
 ,(@?=)
 ,(@=?)
 ,runTests
) where

import Test.HUnit

-- Shortcut wrapper for running an array of Testable items
runTests :: (Testable t) => t -> IO Counts
runTests xs = do runTestTT $ test xs
