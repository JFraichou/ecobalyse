module Page.Textile.Explore.Countries exposing (table)

import Data.Country as Country exposing (Country)
import Data.Gitbook as Gitbook
import Data.Textile.Db as Db
import Html exposing (..)
import Html.Attributes exposing (..)
import Page.Textile.Explore.Common as Common
import Page.Textile.Explore.Table exposing (Table)
import Route
import Views.Format as Format
import Views.Icon as Icon
import Views.Link as Link


table : { detailed : Bool } -> Table Country msg
table { detailed } =
    [ { label = "Code"
      , toCell =
            \country ->
                if detailed then
                    code [] [ text (Country.codeToString country.code) ]

                else
                    a [ Route.href (Route.TextileExplore (Db.Countries (Just country.code))) ]
                        [ code [] [ text (Country.codeToString country.code) ] ]
      }
    , { label = "Nom"
      , toCell = .name >> text
      }
    , { label = "Mix éléctrique"
      , toCell = .electricityProcess >> .name >> text
      }
    , { label = "Chaleur"
      , toCell = .heatProcess >> .name >> text
      }
    , { label = "Part du transport aérien"
      , toCell =
            \country ->
                div [ classList [ ( "text-end", not detailed ) ] ]
                    [ Format.ratio country.airTransportRatio
                    , Link.smallPillExternal
                        [ href (Gitbook.publicUrlFromPath Gitbook.TextileAerialTransport) ]
                        [ Icon.info ]
                    ]
      }
    , { label = "Domaines"
      , toCell = Common.scopesView
      }
    ]
