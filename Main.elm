port module Main exposing (main)

import Html
import Html.App
import Time exposing (Time, second)


main =
    Html.App.program
        { init = ( 0, Cmd.none )
        , view = (\model -> Html.text <| toString model)
        , update = update
        , subscriptions = (\_ -> Time.every second Tick)
        }



-- MODEL


type alias Model =
    Time



-- UPDATE


type Msg
    = Tick Time


update : Msg -> Model -> ( Model, Cmd Msg )
update (Tick newTime) model =
    ( newTime, outgoing newTime )



-- PORTS


port outgoing : Model -> Cmd msg
