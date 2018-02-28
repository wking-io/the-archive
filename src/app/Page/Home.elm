module Page.Home exposing (view)

import Html exposing (Html, main_, p, text)
import View.Frame exposing (frame)
import View.Header as Header


view : String -> Html msg
view name =
    frame (Header.view name) (page name)


page : String -> Html msg
page name =
    main_ []
        [ p [] [ text ("Welcome to the home page - " ++ name) ]
        ]
