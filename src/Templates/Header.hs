{-# LANGUAGE OverloadedStrings #-}

module Templates.Header where

import Prelude
import qualified Prelude as P
import Data.Monoid (mempty)
import Control.Monad (when)

import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A

import qualified Pages.People.Everyone as E
import qualified Pages.Programs.AllPrograms as P
import qualified Pages.Programs.Util as P

import Data.Time.Clock.POSIX
import System.IO.Unsafe

htmlHeader :: Bool -> Html
htmlHeader isInteractive =
    header ! A.id "header" $ do
      H.div ! class_ "container" $ H.div ! class_ "row" $ H.div ! class_ "col-sm-12 overflow" $ H.div ! class_ "social-icons pull-right" $ ul ! class_ "nav nav-pills" $ do
          li $ a ! href "https://www.facebook.com/worldscholarsllc/" $ i ! class_ "fa fa-facebook" $ mempty
          li $ a ! href "https://twitter.com/world_scholars" $ i ! class_ "fa fa-twitter" $ mempty
          --li $ a ! href "" $ i ! class_ "fa fa-linkedin" $ mempty
      H.div ! class_ "navbar navbar-inverse" $ H.div ! class_ "container" $ do
          H.div ! class_ "navbar-header" $ do
            button ! type_ "button" ! class_ "navbar-toggle" ! dataAttribute "toggle" "collapse" ! dataAttribute "target" ".navbar-collapse" $ do
                H.span ! class_ "sr-only" $ "Toggle navigation"
                H.span ! class_ "icon-bar" $ mempty
                H.span ! class_ "icon-bar" $ mempty
                H.span ! class_ "icon-bar" $ mempty
            a ! class_ "navbar-brand" ! href "index.html" $ h1 $ img ! src "images/logo.png" ! alt "logo" ! width "18%"
          H.div ! class_ "collapse navbar-collapse" $ ul ! class_ "nav navbar-nav navbar-right" $ do
              li $ a ! href "index.html" $ "Home"
              li $ a ! href "about.html" $ "About"
              li ! class_ "dropdown" $ do
                a ! href "programs.html" $ do
                  "Programs"
                  i ! class_ "fa fa-angle-down" $ mempty
                ul ! class_ "sub-menu" $ do
                  li "Upcoming"
                  mapM_
                    (\p -> li $ a ! href (toValue $ P.linkTo p) $ (string $ (P.name p)))
                    (P.allPrograms)

