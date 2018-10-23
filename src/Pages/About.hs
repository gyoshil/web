{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards   #-}
module Pages.About (about) where

import Prelude
import qualified Prelude as P
import Data.Monoid (mempty)

import Text.Blaze
import Text.Blaze.Html5
import qualified Text.Blaze.Html5 as H
import Text.Blaze.Html5.Attributes
import qualified Text.Blaze.Html5.Attributes as A

import Pages.People.Everyone
import Pages.People
import Templates.Blocks

about :: Html
about = do

    -- /#company-information
    section ! A.id "team" $ H.div ! class_ "container" $ H.div ! class_ "row" $ do
      h1 ! class_ "title text-center wow fadeInDown" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ "Meet the Team"
      p ! class_ "text-center wow fadeInDown" ! dataAttribute "wow-duration" "400ms" ! dataAttribute "wow-delay" "400ms" $ do
        H.div ! class_ "single-features" $ do
          H.div ! class_ "col-sm-5 wow fadeInLeft" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ img ! src "images/ws-logo.png" ! class_ "img-responsive" ! alt ""
          H.div ! class_ "col-sm-6 col-sm-offset-1 align-left wow fadeInRight" ! dataAttribute "wow-duration" "500ms" ! dataAttribute "wow-delay" "300ms" $ do
            "Gyoshil was born out of our work on "
            a ! href "http://www.gyoshil.com" $ "World Scholars LLC"
            ", the parent project of Gyoshil. World Scholars was founded in 2016, and we have run programs in the US and Korea. Our team is an eclectic group of young professionals at the top of their field who love working together to make change through education."

    people
