module View.Authentication exposing (view)

import Html exposing (Html, main_, div)


view : List (Html msg) -> Html msg
view inputs =
    main_ []
        [ Html.form []
            inputs
        ]
