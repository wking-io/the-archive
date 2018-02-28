module Model exposing (..)


type alias User =
    { name : String
    }


type alias Model =
    { user : User
    }


initialUser : String -> User
initialUser name =
    { name = name
    }


initialModel : Model
initialModel =
    { user = initialUser "Will King" }
