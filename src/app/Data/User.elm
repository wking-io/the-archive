module Data.User exposing (User, init)


type alias User =
    { name : String
    }


init : String -> User
init name =
    { name = name }
