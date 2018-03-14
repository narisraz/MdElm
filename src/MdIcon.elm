module MdIcon exposing (..)


import Css exposing (..)
import Html.Styled as Styled exposing (..)
import Html.Styled.Attributes as Attributes exposing(..)
import Css.Colors exposing (..)

icon: List Style -> List (Attribute msg) -> List (Html msg) -> Html msg
icon userStyles userAttributes =
    styled Styled.i
        (List.append [ verticalAlign middle
        ] userStyles)
        (List.append [ class "material-icons" 
        ] userAttributes)