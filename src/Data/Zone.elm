module Data.Zone exposing
    ( Zone(..)
    , decode
    , encode
    )

import Json.Decode as Decode exposing (Decoder)
import Json.Decode.Extra as DE
import Json.Encode as Encode


type Zone
    = Africa
    | Asia
    | Europe
    | MiddleEast
    | NorthAmerica
    | Oceania
    | SouthAmerica


decode : Decoder Zone
decode =
    Decode.string
        |> Decode.andThen (fromString >> DE.fromResult)


encode : Zone -> Encode.Value
encode zone =
    zone
        |> toString
        |> Encode.string


fromString : String -> Result String Zone
fromString string =
    case string of
        "Africa" ->
            Ok Africa

        "Asia" ->
            Ok Asia

        "Europe" ->
            Ok Europe

        "Middle_East" ->
            Ok MiddleEast

        "North_America" ->
            Ok NorthAmerica

        "Oceania" ->
            Ok Oceania

        "South_America" ->
            Ok SouthAmerica

        _ ->
            Err <| "Zone géographique inconnue : " ++ string


toString : Zone -> String
toString zone =
    case zone of
        Africa ->
            "Africa"

        Asia ->
            "Asia"

        Europe ->
            "Europe"

        MiddleEast ->
            "Middle_East"

        NorthAmerica ->
            "North_America"

        Oceania ->
            "Oceania"

        SouthAmerica ->
            "South_America"
