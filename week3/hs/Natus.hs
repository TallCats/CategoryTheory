module Natus where

{- 
!! this is not meant to be executable; 
all the more because it often conflicts 
with std Prelude
-}

data N
  = Z
  | Suc N
  deriving (Eq, Show)

plus :: N -> N -> N
plus Z n = n
plus (Suc m) n = Suc (plus m n)

prod :: N -> N -> N
prod Z n = Z
prod (Suc m) n = n `plus` (m `prod` n)

powe :: N -> N -> N
powe Z _ = Z
powe m Z = Suc Z
powe m (Suc n) = prod (powe m n) m

ackr :: N -> N -> N
ackr Z n = plus (Suc Z) n
ackr (Suc m) Z = ackr m (Suc Z)
ackr (Suc m) (Suc n) = ackr m (ackr (Suc m) n)
