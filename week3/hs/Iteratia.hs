module Iteratia where

import Prelude hiding (iterate)

iterate :: (a -> a) -> a -> [a]
iterate t x = x : iterate t (t x)

-- a naive example of a converging iteration
dis :: [Float]
dis = take 10 $ iterate (/ 1.1) 100.0

-- and a naive example of a non-converging one:
dat :: [Integer]
dat = take 10 $ iterate (+ 1) 0
