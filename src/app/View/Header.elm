module View.Header exposing (view)

import Html exposing (Html, header, nav, h1, text)


view : String -> Html msg
view name =
    header []
        [ nav []
            [ h1 [] [ text name ]
            ]
        ]
