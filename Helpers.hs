module Helpers (
  test
) where

import System.IO (IO)
import Control.Exception (assert)

test :: String -> Bool -> IO ()
test str ex = putStrLn . show $ assert ex str
