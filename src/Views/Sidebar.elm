module Views.Sidebar exposing (Config, view)

import Data.Bookmark exposing (Bookmark)
import Data.Impact exposing (Impacts)
import Data.Impact.Definition exposing (Definition, Trigram)
import Data.Scope exposing (Scope)
import Data.Session as Session exposing (Session)
import Html exposing (..)
import Html.Attributes exposing (..)
import Mass exposing (Mass)
import Views.Bookmark as BookmarkView
import Views.Impact as ImpactView
import Views.ImpactTabs as ImpactTabs
import Views.Score as ScoreView


type alias Config msg =
    { session : Session
    , scope : Scope

    -- Impact selector
    , selectedImpact : Definition
    , switchImpact : Result String Trigram -> msg

    -- Score
    , customScoreInfo : Maybe (Html msg)
    , productMass : Mass
    , totalImpacts : Impacts

    -- Impacts tabs
    , impactTabsConfig : ImpactTabs.Config msg

    -- Bookmarks
    , activeBookmarkTab : BookmarkView.ActiveTab
    , bookmarkName : String
    , copyToClipBoard : String -> msg
    , compareBookmarks : msg
    , deleteBookmark : Bookmark -> msg
    , saveBookmark : msg
    , updateBookmarkName : String -> msg
    , switchBookmarkTab : BookmarkView.ActiveTab -> msg
    }


view : Config msg -> Html msg
view config =
    let
        db =
            config.session.db
    in
    div
        [ class "d-flex flex-column gap-3 mb-3 sticky-md-top"
        , style "top" "7px"
        ]
        [ if Session.isAuthenticated config.session then
            ImpactView.selector
                db.definitions
                { selectedImpact = config.selectedImpact.trigram
                , switchImpact = config.switchImpact
                }

          else
            text ""
        , ScoreView.view
            { customInfo = config.customScoreInfo
            , impactDefinition = config.selectedImpact
            , score = config.totalImpacts
            , mass = config.productMass
            }
        , config.impactTabsConfig
            |> ImpactTabs.view db.definitions
        , BookmarkView.view
            { session = config.session
            , activeTab = config.activeBookmarkTab
            , bookmarkName = config.bookmarkName
            , impact = config.selectedImpact
            , scope = config.scope
            , copyToClipBoard = config.copyToClipBoard
            , compare = config.compareBookmarks
            , delete = config.deleteBookmark
            , save = config.saveBookmark
            , update = config.updateBookmarkName
            , switchTab = config.switchBookmarkTab
            }
        ]
