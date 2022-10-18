module Views.Component.AmountInput exposing (view)

import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


view : Float -> (Maybe Float -> msg) -> Html msg
view amount message =
    div [ class "input-group input-group-sm my-2" ]
        [ input
            [ class "form-control text-end incdec-arrows-left"
            , type_ "number"
            , step "1"
            , amount
                |> (\f -> f * 1000)
                |> round
                |> String.fromInt
                |> value
            , title "Quantité en grammes"
            , onInput <|
                \str ->
                    message
                        (if str == "" then
                            Just 0

                         else
                            str |> String.toFloat |> Maybe.map (\f -> f / 1000)
                        )
            , Html.Attributes.min "0"
            ]
            []
        , span [ class "input-group-text" ] [ text "g" ]
        ]