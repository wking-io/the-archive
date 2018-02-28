module Main exposing (main)

import Html exposing (Html, program)
import Model exposing (..)
import Page.Home as Home


main : Program Never Model msg
main =
    program
        { init = ( initialModel, Cmd.none )
        , view = view
        , update = \msg model -> ( model, Cmd.none )
        , subscriptions = \model -> Sub.none
        }


view : Model -> Html msg
view model =
    Home.view model.user.name
