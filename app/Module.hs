module Module where

import Lib

moduleFunc :: IO ()
moduleFunc = putStrLn "running module" >> someFunc
