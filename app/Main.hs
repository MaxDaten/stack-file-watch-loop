{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE TemplateHaskell   #-}
module Main where

import Data.Maybe                        (fromJust, maybe)
import Control.Applicative
import Options.Applicative               as Opts
import Options.Applicative.Simple        as Opts
import Paths_stack_file_watch_loop       as Meta

import Lib

main :: IO ()
main = do
  (opt,()) <- simpleOptions
                $(simpleVersion Meta.version)
                "header"
                "descr"
                (pure 10)
                empty
  putStrLn opt
