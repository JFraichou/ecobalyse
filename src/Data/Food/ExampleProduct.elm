module Data.Food.ExampleProduct exposing
    ( ExampleProduct
    , decodeListFromJsonString
    , encodeList
    , findByName
    , findByQuery
    , findByUuid
    , parseUuid
    , toCategory
    , toName
    )

import Data.Food.Query as Query exposing (Query)
import Data.Uuid as Uuid exposing (Uuid)
import Json.Decode as Decode exposing (Decoder)
import Json.Encode as Encode
import Url.Parser as Parser exposing (Parser)


type alias ExampleProduct =
    { id : Uuid
    , name : String
    , query : Query
    , category : String
    }


decode : Decoder ExampleProduct
decode =
    Decode.map4 ExampleProduct
        (Decode.field "id" Uuid.decoder)
        (Decode.field "name" Decode.string)
        (Decode.field "query" Query.decode)
        (Decode.field "category" Decode.string)


decodeListFromJsonString : String -> Result String (List ExampleProduct)
decodeListFromJsonString =
    Decode.decodeString (Decode.list decode)
        >> Result.mapError Decode.errorToString


encode : ExampleProduct -> Encode.Value
encode example =
    Encode.object
        [ ( "id", Uuid.encode example.id )
        , ( "name", Encode.string example.name )
        , ( "category", Encode.string example.category )
        , ( "query", Query.encode example.query )
        ]


encodeList : List ExampleProduct -> Encode.Value
encodeList =
    Encode.list encode


findByName : String -> List ExampleProduct -> Result String ExampleProduct
findByName name =
    List.filter (.name >> (==) name)
        >> List.head
        >> Result.fromMaybe ("Exemple introuvable avec le nom " ++ name)


findByUuid : Uuid -> List ExampleProduct -> Result String ExampleProduct
findByUuid id =
    List.filter (.id >> (==) id)
        >> List.head
        >> Result.fromMaybe ("Exemple introuvable pour l'uuid " ++ Uuid.toString id)


findByQuery : Query -> List ExampleProduct -> Result String ExampleProduct
findByQuery query =
    List.filter (.query >> (==) query)
        >> List.head
        >> Result.fromMaybe "Exemple introuvable"


parseUuid : Parser (Uuid -> a) a
parseUuid =
    Parser.custom "FOODEXAMPLE" Uuid.fromString


toCategory : List ExampleProduct -> Query -> String
toCategory examples q =
    examples
        |> List.filterMap
            (\{ category, query } ->
                if q == query then
                    Just category

                else
                    Nothing
            )
        |> List.head
        |> Maybe.withDefault ""


toName : List ExampleProduct -> Query -> String
toName examples q =
    examples
        |> List.filterMap
            (\{ name, query } ->
                if q == query then
                    Just name

                else
                    Nothing
            )
        |> List.head
        |> Maybe.withDefault "Produit personnalisé"
