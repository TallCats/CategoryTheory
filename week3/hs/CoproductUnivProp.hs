module CoproductUnivProp where

{- 
!! this is not meant to be executable; 
all the more because it often conflicts 
with std Prelude
-}

either :: (a -> x) -> (b -> x) -> Either a b -> x
either f _ (Left a) = f a
either _ g (Right b) = g b
