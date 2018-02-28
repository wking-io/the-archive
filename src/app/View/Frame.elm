module View.Frame exposing (frame)

import Html exposing (Html, div)


frame : Html msg -> Html msg -> Html msg
frame header main =
    div []
        [ header, main ]
