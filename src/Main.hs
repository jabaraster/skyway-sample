module Main where

import Network.Wai.Application.Static
import Network.Wai.Handler.Warp

import System.Environment (getArgs)

port = 3001
-- dir = "/Users/jabaraster/Documents/Develop/Html/peerjs-master/examples/videochat/"

main = do
         args <- getArgs
         dir  <- pure $ args!!0
         putStrLn $ "web server (by wai) start. dir -> " ++ dir
         run port $ staticApp $ defaultFileServerSettings dir
