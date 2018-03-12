module MdButtons.MdButtons exposing (..)


import Css exposing (..)
import Html.Styled as Styled exposing (..)
import Css.Colors exposing (..)



defaultFont : Style 
defaultFont = 
     batch 
        [ fontSize (px 14)
        , fontFamilies [ "Roboto", "sans-serif" ]
        ]    


light : Style 
light =
    color black


dark : Style 
dark =
    color white


flat : Style 
flat = 
    batch
        [ backgroundColor transparent
        , hover
            [ backgroundColor (rgba 0 0 0 0.05) ]
        , active 
            [ backgroundColor (rgba 0 0 0 0.12) ]
        , border (px 0)
        , boxShadow2 (px 0) (px 0)
        ]


raised : Style 
raised = 
    batch
        [ backgroundColor (rgba 158 158 158 0.2)
        , boxShadow
        , active [ backgroundColor (rgba 0 0 0 0.12) ]
        ]


disabled : Style 
disabled = 
    batch 
        [ color (rgba 0 0 0 0.26)
        , Css.boxShadow none
        , cursor default
        , property "pointer-events" "none"
        , touchAction none
        ]


boxShadow : Style 
boxShadow = 
    property "box-shadow" "0 2px 2px 0 rgba(0,0,0,.14), 0 3px 1px -2px rgba(0,0,0,.2), 0 1px 5px 0 rgba(0,0,0,.12);"


button : List Style -> List (Attribute msg) -> List (Html msg) -> Html msg
button userStyles =
    styled Styled.button 
        (List.append 
            [ textTransform uppercase
            , defaultFont
            , height (px 36)
            , minWidth (px 64)
            , borderRadius (px 2)
            , paddingLeft (px 16)
            , paddingRight (px 16)
            , borderStyle none
            , lineHeight (px 36)
            , cursor pointer
            , color (hex "000")
            , outline none
            , raised
            , light
            ]
            userStyles 
        )

