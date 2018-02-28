module View.Input exposing (Config, view)

import Html exposing (Html, text, input, label, div)
import Html.Attributes exposing (type_, placeholder, for)
import Html.Events exposing (onInput)


type alias Config msg =
    { id : String
    , placeholder : String
    , label : String
    , type_ : String
    , inputMsg : String -> msg
    }


view : Config msg -> Html msg
view config =
    div []
        [ label [ for config.id ] [ text config.label ]
        , input [ placeholder config.placeholder, type_ config.type_, onInput config.inputMsg ] []
        ]
