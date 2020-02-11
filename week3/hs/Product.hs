module Product where

{- 
!! this is not meant to be executable; 
all the more becauseit would conflict 
with std Prelude
-}
-- p_A
fst :: (a, b) -> a
fst (x, _) = x

-- p_B
snd :: (a, b) -> b
snd (_, y) = y
