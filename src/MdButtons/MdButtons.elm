module MdButtons.MdButtons exposing (..)


import Css exposing (..)
import Html.Styled as Styled exposing (..)
import Css.Colors exposing (..)



defaultFont : Style 
defaultFont = 
     batch 
        [ fontSize (px 14)
        , fontFamilies [ "Roboto", "sans-serif" ]
        , fontWeight (int 600)
        ]    


light : Style 
light =
    batch
        [ color white
        , hover [ property "filter" "brightness(105%)" ]
        , active [ property "filter" "brightness(110%)" ]
        ]



dark : Style 
dark =
    batch
        [ color black
        , hover [ property "filter" "brightness(95%)" ]
        , active [ property "filter" "brightness(90%)" ]
        ]


flat : ColorValue a -> Style
flat userColor =
    batch
        [ backgroundColor transparent
        , border (px 0)
        , boxShadow2 (px 0) (px 0)
        , color userColor
        , display inlineBlock
        , overflow hidden
        , hover
            [ before
                [ onMouseEvents
                , opacity (num 0.15)
                ]
            ]
        , active
            [ before
                [ onMouseEvents
                , opacity (num 0.20)
                ]
             ]
        ]


onMouseEvents : List Style
onMouseEvents =
    [ property "content" "\"\""
    , display block
    , position absolute
    , left (pct -50)
    , zIndex (int -1)
    , width (pct 500)
    , height (pct 100)
    , backgroundColor userColor
    ]


raised : Style 
raised = 
    batch
        [ backgroundColor (rgba 158 158 158 0.2)
        , boxShadow
        ]


disabled : Style 
disabled = 
    batch 
        [ Css.boxShadow none
        , cursor default
        , property "pointer-events" "none"
        , touchAction none
        , backgroundColor (rgba 0 0 0 0.12)
        , color (rgba 0 0 0 0.26)
        ]


icon : Style
icon =
    batch
        [ borderRadius (pct 50)
        , height (px 56)
        , width (px 56)
        , minWidth (px 32)
        , padding (px 0)
        , overflow hidden
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
            , position relative
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
