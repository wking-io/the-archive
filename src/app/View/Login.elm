module View.Login exposing (Config, view)

import Html exposing (Html, text, a)
import View.Authentication as Authentication
import View.Input as Input


type alias Config msg =
    { emailMsg : String -> msg
    , passwordMsg : String -> msg
    }


view : Config msg -> Html msg
view { emailMsg, passwordMsg } =
    Authentication.view
        [ emailInput emailMsg
        , passwordInput passwordMsg
        , a [] [ text "Login" ]
        ]


emailInput : (String -> msg) -> Html msg
emailInput emailMsg =
    Input.view
        { id = "login-email"
        , placeholder = "Email Address"
        , label = "Email Address"
        , type_ = "email"
        , inputMsg = emailMsg
        }


passwordInput : (String -> msg) -> Html msg
passwordInput passwordMsg =
    Input.view
        { id = "login-password"
        , placeholder = "Password"
        , label = "Password"
        , type_ = "password"
        , inputMsg = passwordMsg
        }
