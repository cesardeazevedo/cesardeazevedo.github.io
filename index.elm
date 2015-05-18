import Graphics.Element exposing (..)
import Html exposing (..)
import Html.Attributes exposing (..)
import Flex exposing (..)

-- VIEW

picture : Html
picture =
    let path = "https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/p160x160/10404090_581122701988040_4790271436818345326_n.jpg?oh=a8d1a2744e5c55a015fde94d0f75dac3&oe=5602937F&__gda__=1439697346_44c2603e33b80e87c496d5a83cd465aa"
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
