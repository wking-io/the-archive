module Page.Login exposing (Model, Msg, init, update, view)

import Html exposing (Html, main_, p, text)
import View.Frame exposing (frame)
import View.Login as Login


-- MODEL --


type alias Model =
    { email : String
    , password : String
    }


init : String -> String -> Model
init email password =
    { email = email, password = password }



-- VIEW --


view : (String -> msg) -> (String -> msg) -> Html msg
view emailMsg passwordMsg =
    frame Nothing (viewPage emailMsg passwordMsg)


viewPage : (String -> msg) -> (String -> msg) -> Html msg
viewPage emailMsg passwordMsg =
    main_ []
        [ Login.view
            { emailMsg = emailMsg
            , passwordMsg = passwordMsg
            }
        ]



-- UPDATE --


type Msg
    = UpdateEmail String
    | UpdatePassword String
    | Submit


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateEmail email ->
            ( { model | email = email }, Cmd.none )

        UpdatePassword password ->
            ( { model | password = password }, Cmd.none )

        Submit ->
            ( model, Cmd.none )
