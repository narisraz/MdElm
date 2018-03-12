module MdIcon exposing (..)


import Css exposing (..)
import Html.Styled as Styled exposing (..)
import Css.Colors exposing (..)

icon: List Style -> List (Attribute msg) -> List (Html msg) -> Html msg
icon userStyles =
    styled Styled.i
        [ position absolute
        , top (pct 50)
        , left (pct 50)
        ]