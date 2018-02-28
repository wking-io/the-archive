module View.Frame exposing (frame)

import Html exposing (Html, div)


frame : Maybe (Html msg) -> Html msg -> Html msg
frame maybeHeader main =
    case maybeHeader of
        Just header ->
            div []
                [ header, main ]

        Nothing ->
            div []
                [ main ]
