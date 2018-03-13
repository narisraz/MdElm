module Main exposing (..)

import Html
import Html.Styled exposing (..)
import Html.Styled.Attributes as Attributes exposing(..)
import MdButtons.MdButtons as MdButton exposing (..)
import MdIcon exposing (..)
import Css exposing (..)
import Css.Colors exposing (..)


---- MODEL ----


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}, Cmd.none )



---- UPDATE ----


type Msg
    = NoOp


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( model, Cmd.none )



---- VIEW ----


view : Model -> Html Msg
view model =
    MdButton.button 
        [ MdButton.flat red
        ] 
        []
        [ text "Ok"]



---- PROGRAM ----


main : Program Never Model Msg
main =
    Html.program
        { view = view >> toUnstyled
        , init = init
        , update = update
        , subscriptions = always Sub.none
        }
