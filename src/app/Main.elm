module Main exposing (main)

import Html exposing (Html, program)
import Model exposing (..)
import Page.Home as Home
import Page.Login as Login


-- MODEL --
-- VIEW --


view : Model -> Html msg
view model =
    Home.view model.user.name



-- UPDATE --
-- MAIN --


main : Program Never Model Home.Msg
main =
    program
        { init = ( (Home.init "Will King"), Cmd.none )
        , view = view
        , update = Home.update
        , subscriptions = \model -> Sub.none
        }
