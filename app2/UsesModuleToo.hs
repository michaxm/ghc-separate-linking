module Main where

import Module

main :: IO ()
main = putStrLn "different module" >> moduleFunc
