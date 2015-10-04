import Graphics.Element exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Flex exposing (..)

-- VIEW

picture : Html
picture =
    let path = "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p200x200/10404090_581122701988040_4790271436818345326_n.jpg?oh=027d73a475acc14e2281d2edf8c6e1ec&oe=56A8448F&__gda__=1453352498_f1a8dd574552a34b2cbc2589d880cf55"

        styles = style
          [ ("width", "100px")
          , ("height", "100px")
          , ("margin", "auto")
          , ("border-radius", "100px")
          ]
    in
       img [ src path, styles ] []

description : String -> Html
description value =
    div [] [text value]

view : Html
view =
    let
      home = div [style [
          ("width", "300px")
        ]]
        [ layout horizontal center center noWrap 
        [ picture
        , description "Cesar Augusto" ]]

    in
       layout vertical center center noWrap
            [ home ]

main : Html
main = fullbleed view
