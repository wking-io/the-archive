module View.Signup exposing (Config, view)

import Html exposing (Html, a, text)
import View.Input as Input
import View.Authentication as Authentication


type alias Config msg =
    { usernameMsg : String -> msg
    , emailMsg : String -> msg
    , passwordMsg : String -> msg
    , confirmMsg : String -> msg
    }


view : Config msg -> Html msg
view { usernameMsg, emailMsg, passwordMsg, confirmMsg } =
    Authentication.view
        [ usernameInput usernameMsg
        , emailInput emailMsg
        , passwordInput passwordMsg
        , passwordAgain confirmMsg
        , a [] [ text "Sign Up" ]
        ]


usernameInput : (String -> msg) -> Html msg
usernameInput usernameMsg =
    Input.view
        { id = "signup-username"
        , placeholder = "Username"
        , label = "Username"
        , type_ = "text"
        , inputMsg = usernameMsg
        }


emailInput : (String -> msg) -> Html msg
emailInput emailMsg =
    Input.view
        { id = "signup-email"
        , placeholder = "Email Address"
        , label = "Email Address"
        , type_ = "email"
        , inputMsg = emailMsg
        }


passwordInput : (String -> msg) -> Html msg
passwordInput passwordMsg =
    Input.view
        { id = "signup-password"
        , placeholder = "Password"
        , label = "Password"
        , type_ = "password"
        , inputMsg = passwordMsg
        }


passwordAgain : (String -> msg) -> Html msg
passwordAgain confirmMsg =
    Input.view
        { id = "signup-confirm"
        , placeholder = "Confirm Password"
        , label = "Confirm Password"
        , type_ = "password"
        , inputMsg = confirmMsg
        }
