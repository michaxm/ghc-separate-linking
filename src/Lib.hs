module Lib (someFunc) where

import Data.List (intersperse)

someFunc :: IO ()
someFunc = putStrLn "running lib" >> putStrLn (concat $ intersperse " " ["running", "external", "lib"])
