module Page.Home exposing (Model, Msg, init, update, view)

import Data.User as User exposing (User)
import Html exposing (Html, main_, p, text)
import View.Frame exposing (frame)
import View.Header as Header


-- MODEL --


type alias Model =
    { user : User
    }


init : String -> Model
init name =
    { user = (User.init name) }



-- VIEW --


view : String -> Html msg
view name =
    frame (Just (Header.view name)) (viewPage name)


viewPage : String -> Html msg
viewPage name =
    main_ []
        [ p [] [ text ("Welcome to the home page - " ++ name) ]
        ]



-- UPDATE --


type Msg
    = Nope


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Nope ->
            ( model, Cmd.none )
