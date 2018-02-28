module Page.Signup exposing (view)

import Html exposing (Html, main_, p, text)
import View.Frame exposing (frame)
import View.Signup as Signup


-- MODEL --


type alias Model =
    { username : String
    , email : String
    , password : String
    , confirm : String
    }


init : String -> String -> String -> String -> Model
init username email password confirm =
    { username = username
    , email = email
    , password = password
    , confirm = confirm
    }



-- VIEW --


view : (String -> msg) -> (String -> msg) -> (String -> msg) -> (String -> msg) -> Html msg
view usernameMsg emailMsg passwordMsg confirmMsg =
    frame Nothing (viewPage usernameMsg emailMsg passwordMsg confirmMsg)


viewPage : (String -> msg) -> (String -> msg) -> (String -> msg) -> (String -> msg) -> Html msg
viewPage usernameMsg emailMsg passwordMsg confirmMsg =
    main_ []
        [ Signup.view
            { usernameMsg = usernameMsg
            , emailMsg = emailMsg
            , passwordMsg = passwordMsg
            , confirmMsg = confirmMsg
            }
        ]



-- UPDATE --


type Msg
    = UpdateUsername String
    | UpdateEmail String
    | UpdatePassword String
    | UpdateConfirm String
    | Submit


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UpdateUsername username ->
            ( { model | username = username }, Cmd.none )

        UpdateEmail email ->
            ( { model | email = email }, Cmd.none )

        UpdatePassword password ->
            ( { model | password = password }, Cmd.none )

        UpdateConfirm confirm ->
            ( { model | confirm = confirm }, Cmd.none )

        Submit ->
            ( model, Cmd.none )
