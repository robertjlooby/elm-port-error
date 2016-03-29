module Main (main) where

import Graphics.Element exposing (show)
import Time exposing (every, second)


currentTime =
  every second


main =
  Signal.map show currentTime


port outgoing : Signal Time.Time
port outgoing =
  currentTime
